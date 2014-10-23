package tr.edu.gsu.peralab.mobilesensing.web.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tr.edu.gsu.peralab.mobilesensing.web.service.UserService;

@Controller
public class MainController {
	
	@Autowired
	UserService userService;

	@RequestMapping("/secured/main")
	public String main(Model model, Principal principal) {
		String userName = principal.getName();
		model.addAttribute("username", userName);
		model.addAttribute("totalUserCount", userService.retrieveUserCount());
		model.addAttribute("onlineUserCount", userService.retrieveOnlineUserCount());
		model.addAttribute("users", userService.retrieveAllUsers());
		return "secured/main";
	}
	
}
