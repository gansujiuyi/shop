package com.jiuyi.jyplant.product.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jiuyi.jyplant.member.controller.MemberControl;
import com.jiuyi.jyplant.product.service.ProductService;
import com.jiuyi.net.mesage.product.Product;
import com.jiuyi.net.mesage.product.ProductReqMsg;
import com.jiuyi.net.mesage.product.ProductRsp;
import com.jiuyi.net.mesage.product.ProductRspMsg;

@Controller
@RequestMapping(value="/product/")
public class ProductController {
	
	Logger log = Logger.getLogger(MemberControl.class);
	
	@Autowired
	private ProductService productService;
	/**
	 * 查询商品信息
	 * @return
	 */
	@RequestMapping(value="queryProduct")
	@ResponseBody
	public ModelAndView queryProduct(){
		log.info("开始查询所有商品信息");
		ModelAndView modelAndView = new ModelAndView();
		ProductReqMsg productReqMsg = new ProductReqMsg();
		ProductRspMsg productRspMsg = productService.queryProduct(productReqMsg);
		if("0000".equals(productRspMsg.getRetCode())){
			ProductRsp productRsp = productRspMsg.getProductRsp();
			List<Product> products = productRsp.getProducts();
			if(null != products && !"".equals(products)){
				modelAndView.setViewName("/pages/main");
				modelAndView.addObject("products",products);
				log.info("查询商品信息成功");
				return modelAndView;
			}
			modelAndView.setViewName("/pages/main");
			log.info("查询商品信息失败");
			return modelAndView;
		}
		modelAndView.setViewName("/pages/main");
		log.info("查询商品信息失败");
		return modelAndView;
	}
	
	
	
	
	
}
