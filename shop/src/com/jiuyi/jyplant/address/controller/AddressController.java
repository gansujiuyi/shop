package com.jiuyi.jyplant.address.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jiuyi.jyplant.address.service.AddressService;
import com.jiuyi.net.mesage.orderInfo.address.Address;
import com.jiuyi.net.mesage.orderInfo.address.AddressReq;
import com.jiuyi.net.mesage.orderInfo.address.AddressReqMsg;
import com.jiuyi.net.mesage.orderInfo.address.AddressRsp;
import com.jiuyi.net.mesage.orderInfo.address.AddressRspMsg;
import com.sun.istack.internal.logging.Logger;
@Controller
@RequestMapping(value="/address/")
public class AddressController {
	
	Logger logger = Logger.getLogger(AddressController.class);;
	
	@Autowired
	public AddressService addressService;
	
	/**
	 * 查询地址信息
	 * @return
	 */
	@RequestMapping(value="queryAddress")
	public ModelAndView asd(String memberId){
		ModelAndView mav = null;
		if(null !=memberId && !"".equals(memberId)){
			AddressReqMsg addressReqMsg = new AddressReqMsg();
			AddressReq addressReq = new AddressReq();
			Address address = new Address();
			address.setMemberId(memberId);
			addressReq.setAddress(address);
			addressReqMsg.setAddressReq(addressReq);
			AddressRspMsg addressRspMsg= addressService.queryAddressInfo(addressReqMsg);
			if("0000".equals(addressRspMsg.getRetCode())){
				AddressRsp addressRsp = addressRspMsg.getAddressRsp();
				List<Address> addresses = addressRsp.getAddresses();
				mav = new ModelAndView();
				mav.setViewName("pages/address/a_list");
				mav.addObject("addresses",addresses);
				return mav;
			}
		}
		mav = new ModelAndView();
		mav.setViewName("pages/address/a_error");
		return mav;
	}
	/**
	 * 保存地址信息
	 * @return
	 */
	@RequestMapping(value="saveAddress")
	public ModelAndView saveAddress(Address address){
		ModelAndView modelAndView = new ModelAndView();
		if(null != address && !"".equals(address)){
			AddressReqMsg addressReqMsg = new AddressReqMsg();
			AddressReq addressReq = new AddressReq();
			addressReq.setAddress(address);
			addressReqMsg.setAddressReq(addressReq);
			AddressRspMsg rspMsg = addressService.checkInfo(addressReqMsg);
			if(rspMsg.getAddressRsp().isCheck()){
				modelAndView.setViewName("pages/address/a_error");
				return modelAndView;
			}
			AddressRspMsg addressRspMsg = addressService.saveAddressInfo(addressReqMsg);
			if(addressRspMsg.getRetCode().equals("0000")){
				modelAndView.setViewName("pages/address/a_list");
				return modelAndView;
				
			}
			modelAndView.setViewName("pages/address/a_error");
			return modelAndView;
		}
		modelAndView.setViewName("pages/address/a_error");
		return modelAndView;
		
	}
	/**
	 * 修改地址信息
	 * @param address
	 * @return
	 */
	public ModelAndView updateAddress(Address address){
		ModelAndView modelAndView = new ModelAndView();
		if(null != address && !"".equals(address)){
			AddressReqMsg addressReqMsg = new AddressReqMsg();
			AddressReq addressReq = new AddressReq();
			addressReq.setAddress(address);
			addressReqMsg.setAddressReq(addressReq);
			AddressRspMsg addressRspMsg = addressService.updateAddressInfo(addressReqMsg);
			if(addressRspMsg.getRetCode().equals("0000")){
				modelAndView.setViewName("pages/address/a_list");
				return modelAndView;
				
			}
			modelAndView.setViewName("pages/address/a_error");
			return modelAndView;
		}
		modelAndView.setViewName("pages/address/a_error");
		return modelAndView;
		
	}
	/**
	 * 删除地址信息
	 * @param address
	 * @return
	 */
	public ModelAndView delAddress(Address address){
		ModelAndView modelAndView = new ModelAndView();
		if(null != address && !"".equals(address)){
			AddressReqMsg addressReqMsg = new AddressReqMsg();
			AddressReq addressReq = new AddressReq();
			addressReq.setAddress(address);
			addressReqMsg.setAddressReq(addressReq);
			AddressRspMsg addressRspMsg = addressService.delAddressInfo(addressReqMsg);
			if(addressRspMsg.getRetCode().equals("0000")){
				modelAndView.setViewName("pages/address/a_list");
				return modelAndView;
				
			}
			modelAndView.setViewName("pages/address/a_error");
			return modelAndView;
		}
		modelAndView.setViewName("pages/address/a_error");
		return modelAndView;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
