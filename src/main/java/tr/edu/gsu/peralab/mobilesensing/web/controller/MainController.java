package tr.edu.gsu.peralab.mobilesensing.web.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import tr.edu.gsu.peralab.mobilesensing.web.entity.Activity;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Device;
import tr.edu.gsu.peralab.mobilesensing.web.entity.Location;
import tr.edu.gsu.peralab.mobilesensing.web.service.UserService;

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
		Map<Activity, Double> activityMap = userService
				.retrieveActivityNumbers(userName, cal.getTimeInMillis(),
						new Date().getTime());
		Map<Date, Map<Activity, Double>> monthlyActivityMap = userService.retrieveMonthlyActivityPercentage(userName);
		model.addAttribute("activityMap", activityMap);
		model.addAttribute("defaultStartTime", new SimpleDateFormat("MM/dd/YYYY h:mm a").format(cal.getTime()));
		model.addAttribute("defaultEndTime", new SimpleDateFormat("MM/dd/YYYY h:mm a").format(new Date()));
		model.addAttribute("monthlyActivityMap", monthlyActivityMap);
		return "secured/main";
	}

	@RequestMapping(value = "/secured/main", method = RequestMethod.POST, headers = { "Content-type=application/json" })
	@ResponseBody
	public Map<Activity, Integer> retrieveActivityPercentages(String userName,
			long startTime, long endTime) {
		return null;
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
