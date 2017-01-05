package com.jiuyi.jyplant.address.service;

import com.jiuyi.net.mesage.orderInfo.address.AddressReqMsg;
import com.jiuyi.net.mesage.orderInfo.address.AddressRspMsg;

public interface AddressService {
	/**
	 * 查询地址信息
	 * @param addressReqMsg
	 * @return
	 */
	public AddressRspMsg queryAddressInfo(AddressReqMsg addressReqMsg);
	/**
	 * 保存地址信息
	 * @param addressReqMsg
	 * @return
	 */
	public AddressRspMsg saveAddressInfo(AddressReqMsg addressReqMsg);
	/**
	 * 修改地址信息
	 * @param addressReqMsg
	 * @return
	 */
	public AddressRspMsg updateAddressInfo(AddressReqMsg addressReqMsg);
	/**
	 * 根据id删除地址信息
	 * @param addressReqMsg
	 * @return
	 */
	public AddressRspMsg delAddressInfo(AddressReqMsg addressReqMsg);
	
	public AddressRspMsg checkInfo(AddressReqMsg addressReqMsg);
}
