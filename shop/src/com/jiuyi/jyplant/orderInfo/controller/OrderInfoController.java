package com.jiuyi.jyplant.orderInfo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jiuyi.jyplant.orderInfo.service.OrderService;
import com.jiuyi.net.mesage.orderInfo.Order;
import com.jiuyi.net.mesage.orderInfo.OrderReq;
import com.jiuyi.net.mesage.orderInfo.OrderReqMsg;
import com.jiuyi.net.mesage.orderInfo.OrderRspMsg;
import com.sun.istack.internal.logging.Logger;

@Controller
@RequestMapping(value="/orders/")
public class OrderInfoController {
	
	Logger logger = Logger.getLogger(OrderInfoController.class);
	@Autowired
	private OrderService orderService;
	/**
	 * 查询用户订单
	 * @return
	 */
	@RequestMapping(value="queryOrder")
	public ModelAndView queryOrder(String memberId){
		ModelAndView mav = null;
		logger.info("开始查询用户订单信息");
		if(null == memberId && "".equals(memberId)){
			mav = new ModelAndView();
			mav.setViewName("/memberInfo/m_login");
			logger.info("用户还没有登录，请登录");
			return mav;
		}
		OrderReqMsg orderReqMsg = new OrderReqMsg();
		OrderReq orderReq = new OrderReq();
		Order order = new Order();
		order.setMemberId(memberId);
		orderReq.setOrder(order);
		orderReqMsg.setOrderReq(orderReq);
		OrderRspMsg orderRspMsg = orderService.queryOrder(orderReqMsg);
		if(null !=orderRspMsg && !"".equals(orderRspMsg)){
			if("0000".equals(orderRspMsg.getRetCode()) && "请求成功".equals(orderRspMsg.getRetShow())){
				List<Order> orders = orderRspMsg.getOrderRsp().getOrders();
				if(null != orders && !"".equals(orders)){
					mav = new ModelAndView();
					mav.setViewName("pages/order/o_list");
					mav.addObject("orders", orders);
					logger.info("查询用户订单信息成功");
					return mav;
				}
			}
			mav = new ModelAndView();
			mav.setViewName("/order/o_error");
			logger.info("查询用户订单信息失败！");
			return mav;
		}
		mav = new ModelAndView();
		mav.setViewName("/order/o_error");
		logger.info("查询用户订单信息失败");
		return mav;
	}
	/**
	 * 加入购物车
	 * @return
	 */
	@RequestMapping(value="addShoppingCart")
	public ModelAndView addShoppingCart(Order order){
		logger.info("开始加入购物车");
		ModelAndView modelAndView = new ModelAndView();
		if(null == order && "".equals(order)){
			modelAndView.setViewName("");
			return modelAndView;
		}
		OrderReqMsg orderReqMsg = new OrderReqMsg();
		OrderReq orderReq = new OrderReq();
		orderReq.setOrder(order);
		orderReqMsg.setOrderReq(orderReq);
		OrderRspMsg orderRspMsg =orderService.saveOrder(orderReqMsg);
		if("0000".equals(orderRspMsg.getRetCode())){
			modelAndView.setViewName("/order/o_list");
			logger.info("加入购物车成功");
			modelAndView.addObject("order",order);
			return modelAndView;
		}
		modelAndView.setViewName("/order/o_error");
		logger.info("加入购物车失败");
		return modelAndView;
	}
	/**
	 * 删除订单
	 * @param order
	 * @return
	 */
	public ModelAndView delOrder(String orderId,String productId){
		logger.info("开始删除购物车中的商品");
		ModelAndView modelAndView = new ModelAndView();
		if(null == productId && "".equals(productId)){
			modelAndView.setViewName("");
			return modelAndView;
		}
		OrderReqMsg orderReqMsg = new OrderReqMsg();
		OrderReq orderReq = new OrderReq();
		Order order = new Order();
		order.setProductId(productId);
		orderReq.setOrder(order);
		orderReqMsg.setOrderReq(orderReq);
		OrderRspMsg orderRspMsg =orderService.delOrder(orderReqMsg);
		if("0000".equals(orderRspMsg.getRetCode())){
			modelAndView.setViewName("/order/o_list");
			logger.info("删除购物车中的商品成功");
			return modelAndView;
		}
		modelAndView.setViewName("/order/o_error");
		logger.info("删除购物车中的商品失败");
		return modelAndView;
	}
	/**
	 * 下订单
	 * @return
	 */
	@RequestMapping(value="placeOrder")
	public ModelAndView placeOrder(Order order){
		logger.info("开始下单");
		ModelAndView modelAndView = new ModelAndView();
		OrderReqMsg orderReqMsg = new OrderReqMsg();
		OrderReq orderReq = new OrderReq();
		if(null == order.getMemberId() && "".equals(order.getMemberId())){
			modelAndView.setViewName("/pages/login");
			return modelAndView;
		}
		if(null == order.getOrderId() && "".equals(order.getOrderId()) || 
				null == order.getProductId() && "".equals(order.getProductId())){
			modelAndView.setViewName("/pages/main");
			return modelAndView;
		}
		//将订单中的商品
		if("0".equals(order.getOrderStatus())){
			order.setOrderStatus("1");
			orderReq.setOrder(order);
			orderReqMsg.setOrderReq(orderReq);
			OrderRspMsg orderRspMsg =orderService.updateOrder(orderReqMsg);
			if("0000".equals(orderRspMsg.getRetCode())){
				modelAndView.setViewName("/order/o_list");
				logger.info("加入购物车成功");
				modelAndView.addObject("order",order);
				return modelAndView;
			}
			modelAndView.setViewName("/order/o_error");
			logger.info("加入购物车失败");
			return modelAndView;
		}
		modelAndView.setViewName("/pages/main");
		return modelAndView;	
	}
	
	
	
	
}
