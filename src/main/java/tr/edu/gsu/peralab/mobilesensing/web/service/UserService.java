/**This file is part of MobileSensingWeb project of Galatasaray University.

   MobileSensingWeb is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   MobileSensingWeb is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with MobileSensingWeb.  If not, see <http://www.gnu.org/licenses/>.
 */

package tr.edu.gsu.peralab.mobilesensing.web.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

import org.apache.commons.lang3.time.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import tr.edu.gsu.peralab.mobilesensing.web.dao.DeviceDAO;
import tr.edu.gsu.peralab.mobilesensing.web.dao.UserDAO;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Activity;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Location;
import tr.edu.gsu.peralab.mobilesensing.web.entity.User;
import tr.edu.gsu.peralab.mobilesensing.web.entity.UserActivity;
import tr.edu.gsu.peralab.mobilesensing.web.entity.json.ActivityMapResponse;
import tr.edu.gsu.peralab.mobilesensing.web.entity.json.ActivityMapResponseList;
import tr.edu.gsu.peralab.mobilesensing.web.entity.json.UserActivityList;

/**
 * @author yalcin.yenigun
 * 
 *         This class contains methods for user operations.
 * 
 */
@Service("userService")
public class UserService {

	@Autowired
	private UserDAO userDAO;

	@Autowired
	private DeviceDAO deviceDAO;

	/**
	 * @param userName
	 * @param password
	 * @return Related user information
	 */
	public User findUser(String userName, String password) {
		return userDAO.retrieveUser(userName);
	}

	/**
	 * @return Number of users in the database
	 */
	public int retrieveUserCount() {
		return userDAO.retriveUserCount();
	}

	/**
	 * @return Number of online users on web application
	 */
	public int retrieveOnlineUserCount() {
		return userDAO.retriveOnlineUserCount();
	}

	/**
	 * @return All users in the database
	 */
	public List<User> retrieveAllUsers() {
		return userDAO.retrieveAllUsers();
	}

	/**
	 * @param userName
	 * @return Related user's mobile device information
	 */
	public Device retrieveDeviceDetail(String userName) {
		return deviceDAO.retrieveDeviceDetail(userName);
	}

	/**
	 * @param userName
	 * @return Related user's location information
	 */
	public Location retrieveLocationInformation(String userName) {
		return deviceDAO.retriveDeviceLocation(userName);
	}

	/**
	 * @param userName
	 * @param startTime
	 * @param endTime
	 * @return Related user's activity percentage (example BICYCLE = 10%,
	 *         RUNNING=20%)
	 */
	public Map<String, Double> retrieveActivityNumbers(String userName,
			long startTime, long endTime) {
		List<Activity> userActivities = deviceDAO.retrieveUserActivity(
				userName, startTime, endTime);
		Map<String, Double> activityNumbers = new HashMap<String, Double>();
		for (Activity activity : userActivities) {
			if (activityNumbers.get(activity.getLabel()) == null) {
				activityNumbers.put(activity.getLabel(), 1.0);
			} else {
				activityNumbers.put(activity.getLabel(),
						activityNumbers.get(activity.getLabel()) + 1);
			}
		}
		for (Map.Entry<String, Double> entry : activityNumbers.entrySet()) {
			activityNumbers.put(entry.getKey(), (double) Math.round(((entry
					.getValue() / userActivities.size()) * 100) * 100) / 100);
		}
		return activityNumbers;
	}

	/**
	 * @param userName
	 * @return Monthly user activity percentage
	 */
	public Map<Date, Map<String, Double>> retrieveMonthlyActivityPercentage(
			String userName) {
		Map<Date, Map<String, Double>> monthlyActivityMap = new TreeMap<Date, Map<String, Double>>();
		for (int i = 1; i < 7; i++) {
			Calendar startTime = Calendar.getInstance();
			startTime.add(Calendar.MONTH, -i);
			Calendar endTime = Calendar.getInstance();
			endTime.add(Calendar.MONTH, 1 - i);
			Map<String, Double> activityMapPerMonth = retrieveActivityNumbers(
					userName, startTime.getTimeInMillis(),
					endTime.getTimeInMillis());
			monthlyActivityMap.put(startTime.getTime(), activityMapPerMonth);
		}
		return monthlyActivityMap;
	}

	/**
	 * @param userName
	 * @return Monthly user activity percentage
	 */
	public ActivityMapResponseList retrieveActivityPercentage(String userName,
			Long startTimeMillis, Long endTimeMillis) {
		long hours = (endTimeMillis - startTimeMillis)
				/ DateUtils.MILLIS_PER_HOUR;
		ActivityMapResponseList activityMapResponseList = new ActivityMapResponseList();
		List<ActivityMapResponse> responses = new ArrayList<ActivityMapResponse>();
		for (int i = 0; i < 6; i++) {
			ActivityMapResponse response = new ActivityMapResponse();
			Calendar startTime = Calendar.getInstance();
			Calendar endTime = Calendar.getInstance();
			calculatePeriod(hours, i, startTime, endTime, response);
			Map<String, Double> activityMapPerPeriod = retrieveActivityNumbers(
					userName, startTime.getTimeInMillis(),
					endTime.getTimeInMillis());
			response.setDate(startTime.getTime());
			response.setActivityMap(activityMapPerPeriod);
			responses.add(response);
		}
		Collections.sort(responses);
		activityMapResponseList.setActivityMaps(responses);
		return activityMapResponseList;
	}

	/**
	 * @param startTimeMillis
	 * @param endTimeMillis
	 * @param activity
	 * @return User activity rankings
	 */
	public UserActivityList retrieveActivityRankings(Long startTimeMillis,
			Long endTimeMillis, Activity activity) {
		List<UserActivity> userActivityList = new ArrayList<UserActivity>();
		UserActivityList userActivityListJson = new UserActivityList();
		for (User user : userDAO.retrieveAllUsers()) {
			int activityNumber = 0;
			List<Activity> userActivities = deviceDAO.retrieveUserActivity(
					user.getUserName(), startTimeMillis, endTimeMillis);
			for (Activity ac : userActivities) {
				if (activity.equals(ac)) {
					activityNumber++;
				}
			}
			UserActivity userActivity = new UserActivity(user.getUserName(),
					activityNumber);
			userActivityList.add(userActivity);
		}
		Collections.sort(userActivityList);
		userActivityListJson.setUserActivities(userActivityList);
		return userActivityListJson;
	}

	private void calculatePeriod(long hours, int index, Calendar startTime,
			Calendar endTime, ActivityMapResponse response) {
		if (hours <= 1) {
			startTime.add(Calendar.MINUTE, -(index * 10));
			endTime.add(Calendar.MONTH, 10 - (index * 10));
			response.setPeriod(String.valueOf(startTime.get(Calendar.MINUTE)));
		} else if (hours <= 6) {
			startTime.add(Calendar.HOUR, -index);
			endTime.add(Calendar.HOUR, 1 - index);
			response.setPeriod(String.valueOf(startTime.get(Calendar.HOUR)));
		} else if (hours <= 24) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("h:mm a",
					Locale.forLanguageTag("TR"));
			startTime.add(Calendar.HOUR, -(index * 4));
			endTime.add(Calendar.HOUR, 4 - (index * 4));
			response.setPeriod(dateFormat.format(startTime.getTime()) + " - "
					+ dateFormat.format(endTime.getTime()));
		} else if (hours <= 144) {
			startTime.add(Calendar.DAY_OF_MONTH, -index);
			endTime.add(Calendar.DAY_OF_MONTH, 1 - index);
			response.setPeriod(new SimpleDateFormat("d MMM", Locale
					.forLanguageTag("TR")).format(startTime.getTime()));
		} else if (hours <= 720) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("d MMM",
					Locale.forLanguageTag("TR"));
			startTime.add(Calendar.DAY_OF_MONTH, -((index + 1) * 5));
			endTime.add(Calendar.DAY_OF_MONTH, 5 - ((-index + 1) * 5));
			response.setPeriod(dateFormat.format(startTime.getTime()) + " - "
					+ dateFormat.format(endTime.getTime()));
		} else {
			startTime.add(Calendar.MONTH, -(index + 1));
			endTime.add(Calendar.MONTH, -index);
			response.setPeriod(new SimpleDateFormat("MMM", Locale
					.forLanguageTag("TR")).format(startTime.getTime()));
		}
	}
}
