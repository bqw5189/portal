/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.conten.portal.web.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 首页 管理的Controller, 使用Restful风格的Urls:
 * 
 * Main page : GET /home/
 * 
 * @author baiqw
 */
@Controller
@RequestMapping(value = "/home")
public class HomeController {


	@RequestMapping(method = RequestMethod.GET)
	public String list() {

		return "home/main";
	}

}
