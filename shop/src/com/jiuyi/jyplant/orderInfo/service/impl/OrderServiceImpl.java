package com.jiuyi.jyplant.orderInfo.service.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.jiuyi.jyplant.orderInfo.service.OrderService;
import com.jiuyi.net.mesage.orderInfo.OrderReqMsg;
import com.jiuyi.net.mesage.orderInfo.OrderRspMsg;
import com.jiuyi.net.utils.EmallEXChangesUtils;

@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {

	@Override
	public OrderRspMsg queryOrder(OrderReqMsg orderReqMsg) {
		OrderRspMsg orderRspMsg = EmallEXChangesUtils.getInstance().queryOrder(orderReqMsg);
		return orderRspMsg;
	}

	@Override
	public OrderRspMsg saveOrder(OrderReqMsg orderReqMsg) {
		OrderRspMsg orderRspMsg = EmallEXChangesUtils.getInstance().saveOrder(orderReqMsg);
		return orderRspMsg;
	}

	@Override
	public OrderRspMsg updateOrder(OrderReqMsg orderReqMsg) {
		OrderRspMsg orderRspMsg = EmallEXChangesUtils.getInstance().updateOrder(orderReqMsg);
		return orderRspMsg;
	}

	@Override
	public OrderRspMsg delOrder(OrderReqMsg orderReqMsg) {
		OrderRspMsg orderRspMsg = EmallEXChangesUtils.getInstance().delOrder(orderReqMsg);
		return orderRspMsg;
	}
	
}
