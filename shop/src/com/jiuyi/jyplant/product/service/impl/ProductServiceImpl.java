package com.jiuyi.jyplant.product.service.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.jiuyi.jyplant.product.service.ProductService;
import com.jiuyi.net.mesage.product.ProductReqMsg;
import com.jiuyi.net.mesage.product.ProductRspMsg;
import com.jiuyi.net.utils.EmallEXChangesUtils;
@Transactional
@Service("productService")
public class ProductServiceImpl implements ProductService{

	@Override
	public ProductRspMsg queryProduct(ProductReqMsg productReqMsg) {
		ProductRspMsg productRspMsg = EmallEXChangesUtils.getInstance().queryProduct(productReqMsg);
		return productRspMsg;
	}

	@Override
	public ProductRspMsg saveProduct(ProductReqMsg productReqMsg) {
		ProductRspMsg productRspMsg = EmallEXChangesUtils.getInstance().saveProduct(productReqMsg);
		return productRspMsg;
	}

	@Override
	public ProductRspMsg updateProduct(ProductReqMsg productReqMsg) {
		ProductRspMsg productRspMsg = EmallEXChangesUtils.getInstance().updateProduct(productReqMsg);
		return productRspMsg;
	}

	@Override
	public ProductRspMsg delProduct(ProductReqMsg productReqMsg) {
		ProductRspMsg productRspMsg = EmallEXChangesUtils.getInstance().delProduct(productReqMsg);
		return productRspMsg;
	}

	
	
	
	
}
