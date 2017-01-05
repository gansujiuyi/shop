package com.jiuyi.jyplant.address.service.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.jiuyi.jyplant.address.service.AddressService;
import com.jiuyi.net.mesage.memberInfo.MemberInfoRspMsg;
import com.jiuyi.net.mesage.orderInfo.address.AddressReqMsg;
import com.jiuyi.net.mesage.orderInfo.address.AddressRspMsg;
import com.jiuyi.net.utils.EmallEXChangesUtils;

@Service("addressService")
@Transactional
public class AddressServiceImpl implements AddressService {
	
	/**
	 * 查询地址信息
	 */	
	@Override
	public AddressRspMsg queryAddressInfo(AddressReqMsg addressReqMsg) {
		AddressRspMsg addressRspMsg = EmallEXChangesUtils.getInstance().queryAddressInfo(addressReqMsg);
		return addressRspMsg;
	}
	/**
	 * 保存地址信息
	 */
	@Override
	public AddressRspMsg saveAddressInfo(AddressReqMsg addressReqMsg) {
		AddressRspMsg addressRspMsg = EmallEXChangesUtils.getInstance().saveAddressInfo(addressReqMsg);
				return addressRspMsg;
	}
	/**
	 * 修改地址信息
	 */
	@Override
	public AddressRspMsg updateAddressInfo(AddressReqMsg addressReqMsg) {
		AddressRspMsg addressRspMsg = EmallEXChangesUtils.getInstance().updateAddressInfo(addressReqMsg);
				return addressRspMsg;
	}
	/**
	 * 根据id删除地址信息
	 */
	@Override
	public AddressRspMsg delAddressInfo(AddressReqMsg addressReqMsg) {
		AddressRspMsg addressRspMsg = EmallEXChangesUtils.getInstance().delAddressInfo(addressReqMsg);
				return addressRspMsg;
	}
	@Override
	public AddressRspMsg checkInfo(AddressReqMsg addressReqMsg) {
		AddressRspMsg addressRspMsg = EmallEXChangesUtils.getInstance().ckeckAddressInfo(addressReqMsg);
		return addressRspMsg;
	}

}
