package com.jiuyi.jyplant.product.service;

import com.jiuyi.net.mesage.product.ProductReqMsg;
import com.jiuyi.net.mesage.product.ProductRspMsg;

public interface ProductService {
	/**
	 * 查询所有商品
	 * @param productReqMsg
	 * @return
	 */
	public ProductRspMsg queryProduct(ProductReqMsg productReqMsg);
	/**
	 * 保存商品信息
	 * @param productReqMsg
	 * @return
	 */
	public ProductRspMsg saveProduct(ProductReqMsg productReqMsg);
	/**
	 *	修改商品信息
	 * @param productReqMsg
	 * @return
	 */
	public ProductRspMsg updateProduct(ProductReqMsg productReqMsg);
	/**
	 * 删除商品信息
	 * @param productReqMsg
	 * @return
	 */
	public ProductRspMsg delProduct(ProductReqMsg productReqMsg);
	
	
	
	
	
	
	
}
