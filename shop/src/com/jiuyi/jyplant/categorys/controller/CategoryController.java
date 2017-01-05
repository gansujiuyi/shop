package com.jiuyi.jyplant.categorys.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jiuyi.jyplant.categorys.service.CategoryService;
import com.jiuyi.net.mesage.category.Category;
import com.jiuyi.net.mesage.category.CategoryRsp;
import com.jiuyi.net.mesage.category.CategoryRspMsg;
@Controller
@RequestMapping(value="/category/")
public class CategoryController {
	
	Logger log = Logger.getLogger(CategoryController.class);
	
	@Autowired
	private CategoryService categoryService;
	
	/**
	 * 查询商品分类信息
	 * @return
	 */
	@RequestMapping(value="queryCategory")
	public ModelAndView queryCategory(){
		log.info("开始分类查询......");
		ModelAndView modelAndView = new ModelAndView();
		CategoryRspMsg categoryRspMsg = categoryService.queryCategory();
		if(null !=categoryRspMsg && !"".equals(categoryRspMsg)){
			CategoryRsp categoryRsp = categoryRspMsg.getCategoryRsp();
			List<Category> categorys = categoryRsp.getCategorys();
			modelAndView.setViewName("category/c_list");
			modelAndView.addObject("categorys", categorys);
			log.info("分类查询成功！");
			return modelAndView;
		}
		log.error("分类查询失败！");
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
