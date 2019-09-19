package com.webcomponents.controller;

import java.io.Serializable;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@Scope("session")
public class WebComponentController implements Serializable {
	
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 861620058943228602L;
	
	/**
	 * this is for the purpose of logger implementation.
	 * And Logger is provided by this jar - (log4j-1.2.16.jar)
	 * Logger Package is - (org.apache.log4j.Logger)
	 */
	public static final Logger LOGGER=Logger.getLogger(WebComponentController.class);
	
	/**
	 * @author kathiravang
	 * when the request is invoke that time this method is used to show the home.jsp page in browser
	 * @return home.jsp
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home() {
		
		if(LOGGER.isDebugEnabled()) {
			LOGGER.debug("home method invoked");
		}
		if(LOGGER.isInfoEnabled()) {
			LOGGER.info("home method invoked");
		}
		
		return "home";
		
	}

}
