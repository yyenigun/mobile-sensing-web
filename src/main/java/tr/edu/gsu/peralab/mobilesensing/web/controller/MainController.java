package tr.edu.gsu.peralab.mobilesensing.web.controller;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tr.edu.gsu.peralab.mobilesensing.web.entity.Activity;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Location;
import tr.edu.gsu.peralab.mobilesensing.web.entity.json.ActivityFilter;
import tr.edu.gsu.peralab.mobilesensing.web.entity.json.ActivityMapResponseList;
import tr.edu.gsu.peralab.mobilesensing.web.entity.json.DeviceList;
import tr.edu.gsu.peralab.mobilesensing.web.entity.json.UserActivityList;
import tr.edu.gsu.peralab.mobilesensing.web.service.UserService;
import tr.edu.gsu.peralab.mobilesensing.web.util.DateUtil;

@Controller
public class MainController {

	@Autowired
	private UserService userService;

	@RequestMapping("/secured/main")
	public String main(Model model, Principal principal) {
		String userName = principal.getName();
		model.addAttribute("username", userName);
		model.addAttribute("totalUserCount", userService.retrieveUserCount());
		model.addAttribute("onlineUserCount",
				userService.retrieveOnlineUserCount());
		model.addAttribute("users", userService.retrieveAllUsers());
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, -6);
		Map<String, Double> activityMap = userService.retrieveActivityNumbers(
				userName, cal.getTimeInMillis(), new Date().getTime());
		Map<Date, Map<String, Double>> monthlyActivityMap = userService
				.retrieveMonthlyActivityPercentage(userName);
		Set<String> yKeys = new HashSet<String>();
		for (Map<String, Double> map : monthlyActivityMap.values()) {
			yKeys.addAll(map.keySet());
		}
		model.addAttribute("yKeys", yKeys);
		model.addAttribute("activityMap", activityMap);
		model.addAttribute("defaultStartTime", new SimpleDateFormat(
				"MM/dd/YYYY h:mm a").format(cal.getTime()));
		model.addAttribute("defaultEndTime", new SimpleDateFormat(
				"MM/dd/YYYY h:mm a").format(new Date()));
		model.addAttribute("monthlyActivityMap", monthlyActivityMap);
		return "secured/main";
	}

	@RequestMapping(value = "/secured/main/activities", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public Map<String, Double> retrieveActivityPercentages(Model model,
			@RequestBody ActivityFilter activityFilter, Principal principal)
			throws ParseException {
		Map<String, Double> activities = null;
		String userName = principal.getName();
		model.addAttribute("username", userName);
		activities = userService.retrieveActivityNumbers(principal.getName(),
				DateUtil.retriveJsonTimeValue(activityFilter.getStartTime()),
				DateUtil.retriveJsonTimeValue(activityFilter.getEndTime()));
		return activities;
	}

	@RequestMapping(value = "/secured/main/activityfilter", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ActivityMapResponseList retrieveActivityPercentage(
			@RequestBody ActivityFilter activityFilter, Model model,
			Principal principal) throws ParseException {
		String userName = principal.getName();
		model.addAttribute("username", userName);
		ActivityMapResponseList activityMapResponseList = null;
		activityMapResponseList = userService.retrieveActivityPercentage(
				principal.getName(),
				DateUtil.retriveJsonTimeValue(activityFilter.getStartTime()),
				DateUtil.retriveJsonTimeValue(activityFilter.getEndTime()));
		return activityMapResponseList;
	}

	@RequestMapping(value = "/secured/activityrankings")
	public String retrieveUserActivityRankings(Model model, Principal principal) {
		String userName = principal.getName();
		model.addAttribute("username", userName);
		UserActivityList userActivityList = null;
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, -6);
		userActivityList = userService.retrieveActivityRankings(
				cal.getTimeInMillis(), new Date().getTime(), "STATIONARY");
		model.addAttribute("userrankings", userActivityList);
		model.addAttribute("currentActivity", "STATIONARY");
		model.addAttribute("allactivities", Activity.allActivities);
		return "/secured/activityrankings";
	}

	@RequestMapping(value = "/secured/renderactivityrankings", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public UserActivityList retrieveUserActivityRankingsJSON(
			@RequestBody ActivityFilter activityFilter, Model model,
			Principal principal) {
		String userName = principal.getName();
		model.addAttribute("username", userName);
		UserActivityList userActivityList = null;
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, -12);
		userActivityList = userService.retrieveActivityRankings(
				cal.getTimeInMillis(), new Date().getTime(),
				activityFilter.getActivity());
		model.addAttribute("currentActivity", activityFilter.getActivity());
		model.addAttribute("userrankings", userActivityList);
		return userActivityList;
	}

	@RequestMapping("/secured/device/{username}")
	public String device(@PathVariable String username, Model model,
			Principal principal) {
		Device device = userService.retrieveDeviceDetail(username);
		Location location = userService.retrieveLocationInformation(username);
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.DAY_OF_MONTH, -7);
		DeviceList deviceList = userService.retrieveBatteryLevels(username, cal.getTime().getTime(),new Date().getTime());
		String userName = principal.getName();
		model.addAttribute("username", userName);
		model.addAttribute("device", device);
		model.addAttribute("location", location);
		model.addAttribute("deviceList",deviceList);
		return "secured/device";
	}

	@RequestMapping(value = "/secured/renderbatterylevels/{username}", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public DeviceList retrieveBatteryLevels(@PathVariable String username,
			@RequestBody ActivityFilter activityFilter, Model model,
			Principal principal) {
		DeviceList deviceList = null;
		try {
			deviceList = userService.retrieveBatteryLevels(username, DateUtil.retriveJsonTimeValue(activityFilter.getStartTime()),
					DateUtil.retriveJsonTimeValue(activityFilter.getEndTime()));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return deviceList;
	}

	@RequestMapping("/secured/activity/{username}")
	public String user(@PathVariable String username, Model model,
			Principal principal) {
		model.addAttribute("username", username);
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, -6);
		Map<String, Double> activityMap = userService.retrieveActivityNumbers(
				username, cal.getTimeInMillis(), new Date().getTime());
		Map<Date, Map<String, Double>> monthlyActivityMap = userService
				.retrieveMonthlyActivityPercentage(username);
		model.addAttribute("activityMap", activityMap);
		model.addAttribute("defaultStartTime", new SimpleDateFormat(
				"MM/dd/YYYY h:mm a").format(cal.getTime()));
		model.addAttribute("defaultEndTime", new SimpleDateFormat(
				"MM/dd/YYYY h:mm a").format(new Date()));
		model.addAttribute("monthlyActivityMap", monthlyActivityMap);
		Set<String> yKeys = new HashSet<String>();
		for (Map<String, Double> map : monthlyActivityMap.values()) {
			yKeys.addAll(map.keySet());
		}
		model.addAttribute("yKeys", yKeys);
		return "secured/activity";
	}

}
