package hufs.green.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import hufs.green.util.PrincipalConverter;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Autowired
	PrincipalConverter principalConverter;
	
	@RequestMapping("/")
	public String defaultHome() {
		return "green_ground";
	}

	@RequestMapping("/home")
	public String home() {
		return "green_ground";
	}

	@RequestMapping("/login")
	public String login() {
		return "green_ground_login";
	}

	@RequestMapping("/mHome")
	public String mobileHome() {
		return "green_ground_mSign";
	}

	@RequestMapping("/mLogin")
	public String mobileLogin() {
		return "green_ground_mLogin";
	}
	

}
