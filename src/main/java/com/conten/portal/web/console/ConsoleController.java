/*******************************************************************************
 * Copyright (c) 2005, 2014 springside.github.io
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 *******************************************************************************/
package com.conten.portal.web.console;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 控制台 管理的Controller, 使用Restful风格的Urls:
 * 
 * Main page : GET /console/
 * 
 * @author calvin
 */
@Controller
@RequestMapping(value = "/console")
public class ConsoleController {


	@RequestMapping(method = RequestMethod.GET)
	public String list() {

		return "console/main";
	}

}
