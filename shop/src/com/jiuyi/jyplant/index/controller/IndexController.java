package com.jiuyi.jyplant.index.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "index")
public class IndexController {
	
	private static final Logger logger = Logger.getLogger(IndexController.class);
	
	/**
	 * 进入商户入驻
	 * @return
	 */
	@RequestMapping("/index")
	public String index(){
		logger.info("首页......");
		return "/pages/main";
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
