package com.jiuyi.jyplant.orderInfo.service;

import com.jiuyi.net.mesage.orderInfo.OrderReqMsg;
import com.jiuyi.net.mesage.orderInfo.OrderRspMsg;

public interface OrderService {
	/**
	 * 根据会员id查询订单信息
	 * @param orderReqMsg
	 * @return
	 */
	public OrderRspMsg queryOrder(OrderReqMsg orderReqMsg);
	/**
	 * 保存订单信息
	 * @param orderReqMsg
	 * @return
	 */
	public OrderRspMsg saveOrder(OrderReqMsg orderReqMsg);
	/**
	 * 修改订单信息
	 * @param orderReqMsg
	 * @return
	 */
	public OrderRspMsg updateOrder(OrderReqMsg orderReqMsg);
	/**
	 * 删除订单信息
	 * @param orderReqMsg
	 * @return
	 */
	public OrderRspMsg delOrder(OrderReqMsg orderReqMsg);
	
	
	
	
	
}
