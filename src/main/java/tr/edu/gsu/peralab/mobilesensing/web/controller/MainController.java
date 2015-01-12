package tr.edu.gsu.peralab.mobilesensing.web.controller;

import java.security.Principal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;

import org.apache.log4j.Logger;
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
import tr.edu.gsu.peralab.mobilesensing.web.entity.json.UserActivityList;
import tr.edu.gsu.peralab.mobilesensing.web.service.UserService;
import tr.edu.gsu.peralab.mobilesensing.web.util.DateUtil;

@Controller
public class MainController {

	@Autowired
	private UserService userService;

	private static final Logger LOGGER = Logger.getLogger(MainController.class);

	@RequestMapping("/secured/main")
	public String main(Model model, Principal principal) {
		String userName = principal.getName();
		model.addAttribute("username", userName);
		model.addAttribute("totalUserCount", userService.retrieveUserCount());
		model.addAttribute("onlineUserCount",
				userService.retrieveOnlineUserCount());
		model.addAttribute("users", userService.retrieveAllUsers());
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, -7);
		Map<String, Double> activityMap = userService.retrieveActivityNumbers(
				userName, cal.getTimeInMillis(), new Date().getTime());
		Map<Date, Map<String, Double>> monthlyActivityMap = userService
				.retrieveMonthlyActivityPercentage(userName);
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
			@RequestBody ActivityFilter activityFilter, Principal principal) {
		Map<String, Double> activities = null;
		String userName = principal.getName();
		model.addAttribute("username", userName);
		try {
			activities = userService.retrieveActivityNumbers(principal
					.getName(), DateUtil.retriveJsonTimeValue(activityFilter
					.getStartTime()), DateUtil
					.retriveJsonTimeValue(activityFilter.getEndTime()));
		} catch (NumberFormatException e) {
			LOGGER.error(e);
		} catch (ParseException e) {
			LOGGER.error(e);
		}
		return activities;
	}

	@RequestMapping(value = "/secured/main/activityfilter", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE, consumes = MediaType.APPLICATION_JSON_VALUE)
	@ResponseBody
	public ActivityMapResponseList retrieveActivityPercentage(
			@RequestBody ActivityFilter activityFilter, Model model,
			Principal principal) {
		String userName = principal.getName();
		model.addAttribute("username", userName);
		ActivityMapResponseList activityMapResponseList = null;
		try {
			activityMapResponseList = userService
					.retrieveActivityPercentage(principal.getName(),
							DateUtil.retriveJsonTimeValue(activityFilter
									.getStartTime()), DateUtil
									.retriveJsonTimeValue(activityFilter
											.getEndTime()));
		} catch (ParseException e) {
			LOGGER.error(e);
		}
		return activityMapResponseList;
	}

	@RequestMapping(value = "/secured/activityrankings")
	public String retrieveUserActivityRankings(Model model, Principal principal) {
		String userName = principal.getName();
		model.addAttribute("username", userName);
		UserActivityList userActivityList = null;
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, -12);
		userActivityList = userService.retrieveActivityRankings(
				cal.getTimeInMillis(), new Date().getTime(),
				Activity.STATIONARY);
		model.addAttribute("userrankings", userActivityList);
		model.addAttribute("currentActivity", Activity.STATIONARY.getLabel());
		model.addAttribute("allactivities", Activity.values());
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
				Activity.toActivity(activityFilter.getActivity()));
		model.addAttribute("currentActivity",activityFilter.getActivity());
		model.addAttribute("userrankings", userActivityList);
		return userActivityList;
	}

	@RequestMapping("/secured/device/{username}")
	public String device(@PathVariable String username, Model model,
			Principal principal) {
		Device device = userService.retrieveDeviceDetail(username);
		Location location = userService.retrieveLocationInformation(username);
		String userName = principal.getName();
		model.addAttribute("username", userName);
		model.addAttribute("device", device);
		model.addAttribute("location", location);
		return "secured/device";
	}

}
