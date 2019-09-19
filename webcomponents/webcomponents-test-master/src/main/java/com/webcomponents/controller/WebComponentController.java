package com.webcomponents.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WebComponentController {
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		System.out.println("home called");
		return "home";
	}

}
