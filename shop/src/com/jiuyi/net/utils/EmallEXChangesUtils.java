package com.jiuyi.net.utils;

import org.apache.log4j.Logger;

import com.jiuyi.net.base.Head;
import com.jiuyi.net.mesage.category.CategoryReqMsg;
import com.jiuyi.net.mesage.category.CategoryRspMsg;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateReqMsg;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateRspMsg;
import com.jiuyi.net.mesage.email.EmaillReqMsg;
import com.jiuyi.net.mesage.email.EmaillRspMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfoReqMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfoRspMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfos;
import com.jiuyi.net.mesage.orderInfo.OrderReqMsg;
import com.jiuyi.net.mesage.orderInfo.OrderRspMsg;
import com.jiuyi.net.mesage.orderInfo.address.AddressReqMsg;
import com.jiuyi.net.mesage.orderInfo.address.AddressRspMsg;
import com.jiuyi.net.mesage.product.ProductReqMsg;
import com.jiuyi.net.mesage.product.ProductRspMsg;
import com.jiuyi.net.mesage.suggest.SuggestReqMsg;
import com.jiuyi.net.mesage.suggest.SuggestRspMsg;
import com.jiuyi.net.mesage.userinfo.UserInfoReq;
import com.jiuyi.net.mesage.userinfo.UserInfoReqMsg;
import com.jiuyi.net.mesage.userinfo.UserInfoRspMsg;
import com.jiuyi.net.service.IEmallEXChangesService;
import com.jiuyi.utils.ConfigManager;
import com.jiuyi.utils.WSClientUtils;

public class EmallEXChangesUtils {

	Logger log = Logger.getLogger(EmallEXChangesUtils.class);

	private static EmallEXChangesUtils exChangesUtils;

	public static EmallEXChangesUtils getInstance() {
		if (exChangesUtils == null)
			exChangesUtils = new EmallEXChangesUtils();

		return exChangesUtils;
	}

	/**
	 * 得到头部
	 * 
	 */
	private static Head createHead(String serviceName) {
		Head h = new Head();
		h.setAuthcode(SystemValueInit.getAuthCode());
		h.setReqsn(DateUtils.getNowDateTime2() + "002");
		h.setServicename(serviceName);
		h.setTranchannel(SystemValueInit.getTranChannel());
		h.setTrandatetime(DateUtils.getCurDateTime());
		h.setVersion(SystemValueInit.getVersion());
		h.setuName("jiuyi");
		h.setpWord("1qaz2wsx");
		return h;
	}

	public UserInfoRspMsg queryUserInfo(String userName, String uPassword) {
		UserInfoRspMsg userInfoRspmsg = new UserInfoRspMsg();
		UserInfoReq infoReq = new UserInfoReq();
		UserInfoReqMsg infoReqMsg = new UserInfoReqMsg();
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		infoReq.setuPassword(uPassword);
		infoReq.setUserName(userName);
		infoReqMsg.setInfoReq(infoReq);
		infoReqMsg.setMsghead(createHead("queryUserInfo"));
		userInfoRspmsg = changesService.queryUserInfo(infoReqMsg);
		return userInfoRspmsg;
	}

	/**
	 * 根据会员名查询会员信息
	 * 
	 * @param memberInfoReqMsg
	 * @return
	 */
	public MemberInfoRspMsg queryMemberInfo(MemberInfoReqMsg memberInfoReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		memberInfoReqMsg.setMsghead(createHead("queryMemberInfo"));
		// 获取响应信息
		MemberInfoRspMsg memberInfoRspMsg = changesService.memberQuery(memberInfoReqMsg);
		return memberInfoRspMsg;
	}

	/**
	 * 保存会员信息
	 * 
	 * @param infoReqMsg
	 * @return
	 */
	public MemberInfoRspMsg saveMemberInfo(MemberInfoReqMsg infoReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		infoReqMsg.setMsghead(createHead("saveMemberInfo"));
		// 邮件的内容
		MemberInfos memberInfos = infoReqMsg.getMemberInfoReq().getMemberInfos();
		String serverUrl = ConfigManager.getString("serverUrl",
				"http://localhost:8080");
		StringBuffer content = new StringBuffer(
				"点击下面链接激活账号，48小时生效，否则重新注册账号，链接只能使用一次，请尽快激活！</br>");
		content.append("<a href=\""
				+ serverUrl
				+ "/emall/memberInfo/member/memberOpt.htmls?action=activate&email=");
		content.append(memberInfos.getMemberEmail());
		content.append("&validateCode=");
		content.append(memberInfos.getValidateCode());
		content.append("\">http://"
				+ serverUrl
				+ "/emall/memberInfo/member/memberOpt.htmls?action=activate&email=");
		content.append(memberInfos.getMemberEmail());
		content.append("&validateCode=");
		content.append(memberInfos.getValidateCode());
		content.append("</a>");
		// 获取响应信息
		infoReqMsg.getMemberInfoReq().setContent(content.toString());
		// 获取响应信息
		MemberInfoRspMsg infoRspMsg = changesService.memberReg(infoReqMsg);
		// 返回响应信息
		return infoRspMsg;
	}

	/**
	 * 校验会员信息
	 * 
	 * @param infoReqMsg
	 * @return
	 */
	public MemberInfoRspMsg checkMemberInfo(MemberInfoReqMsg infoReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		infoReqMsg.setMsghead(createHead("checkMemberInfo"));
		// 获取响应信息
		MemberInfoRspMsg infoRspMsg = changesService.memberCheck(infoReqMsg);
		// 返回响应信息
		return infoRspMsg;
	}

	/**
	 * 查询商品分类信息
	 * 
	 * @return
	 */
	public CategoryRspMsg queryCategory() {
		CategoryReqMsg categoryReqMsg = new CategoryReqMsg();
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		categoryReqMsg.setMsghead(createHead("checkMemberInfo"));
		CategoryRspMsg categoryRspMsg = changesService.queryCategorys(categoryReqMsg);
		// 获取响应信息
		return categoryRspMsg;
	}

	/**
	 * 修改会员信息
	 * 
	 * @param infoReqMsg
	 * @return
	 */
	public MemberInfoRspMsg updateMemberInfo(MemberInfoReqMsg infoReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		infoReqMsg.setMsghead(createHead("updateMemberInfo"));
		// 获取响应信息
		MemberInfoRspMsg infoRspMsg = changesService.memberUpdate(infoReqMsg);
		// 返回响应信息
		return infoRspMsg;
	}

	/**
	 * 根据会员id查询订单信息
	 * 
	 * @param orderReqMsg
	 * @return
	 */
	public OrderRspMsg queryOrder(OrderReqMsg orderReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		orderReqMsg.setMsghead(createHead("queryOrder"));
		// 获取响应信息
		OrderRspMsg orderRspMsg = changesService.orderQuery(orderReqMsg);
		// 返回响应信息
		return orderRspMsg;
	}

	/**
	 * 
	 * @param emaillReqMsg
	 * @return
	 */
	public EmaillRspMsg sendEmail(EmaillReqMsg emaillReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		emaillReqMsg.setMsghead(createHead("sendEmail"));
		// 获取响应信息
		EmaillRspMsg emaillRspMsg = changesService.sendEmaillCode(emaillReqMsg);
		// 返回响应信息
		return emaillRspMsg;
	}

	/**
	 * 
	 * @param emaillReqMsg
	 * @return
	 */
	public EmaillRspMsg queryEmailCode(EmaillReqMsg emaillReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		emaillReqMsg.setMsghead(createHead("queryEmailCode"));
		// 获取响应信息
		EmaillRspMsg emaillRspMsg = changesService.emaillQuery(emaillReqMsg);
		// 返回响应信息
		return emaillRspMsg;
	}

	/**
	 * 
	 * @param emaillReqMsg
	 * @return
	 */
	public EmaillRspMsg updateEmail(EmaillReqMsg emaillReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		emaillReqMsg.setMsghead(createHead("updateEmail"));
		// 获取响应信息
		EmaillRspMsg emaillRspMsg = changesService.emaillUpdate(emaillReqMsg);
		// 返回响应信息
		return emaillRspMsg;
	}
	/**
	 * 查询地址信息
	 * @param addressReqMsg
	 * @return
	 */
	public AddressRspMsg queryAddressInfo(AddressReqMsg addressReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		addressReqMsg.setMsghead(createHead("queryAddressInfo"));
		// 获取响应信息
		AddressRspMsg addressRspMsg = changesService.addressQuery(addressReqMsg);
		// 返回响应信息
		return addressRspMsg;
	}
	/**
	 * 保存地址信息
	 * @param addressReqMsg
	 * @return
	 */
	public AddressRspMsg saveAddressInfo(AddressReqMsg addressReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		addressReqMsg.setMsghead(createHead("saveAddressInfo"));
		// 获取响应信息
		AddressRspMsg addressRspMsg = changesService.addressSave(addressReqMsg);
		// 返回响应信息
		return addressRspMsg;
	}
	/**
	 * 修改地址信息
	 * @param addressReqMsg
	 * @return
	 */
	public AddressRspMsg updateAddressInfo(AddressReqMsg addressReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		addressReqMsg.setMsghead(createHead("updateAddressInfo"));
		// 获取响应信息
		AddressRspMsg addressRspMsg = changesService.addressUpdate(addressReqMsg);
		// 返回响应信息
		return addressRspMsg;
	}
	/**
	 * 根据id删除地址信息
	 * @param addressReqMsg
	 * @return
	 */
	public AddressRspMsg delAddressInfo(AddressReqMsg addressReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		addressReqMsg.setMsghead(createHead("delAddressInfo"));
		// 获取响应信息
		AddressRspMsg addressRspMsg = changesService.addressDel(addressReqMsg);
		// 返回响应信息
		return addressRspMsg;
	}
	/**
	 * 激活会员信息
	 * @param infoReqMsg
	 * @return
	 */
	public MemberInfoRspMsg processActivate(MemberInfoReqMsg infoReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		infoReqMsg.setMsghead(createHead("processActivate"));
	
		MemberInfoRspMsg infoRspMsg = changesService.processActivate(infoReqMsg);
		// 返回响应信息
		return infoRspMsg;
	}
	/**
	 * 校验重复地址
	 * @param addressReqMsg
	 * @return
	 */
	public AddressRspMsg ckeckAddressInfo(AddressReqMsg addressReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		addressReqMsg.setMsghead(createHead("delAddressInfo"));
		// 获取响应信息
		AddressRspMsg addressRspMsg = changesService.addressCheck(addressReqMsg);
		// 返回响应信息
		return addressRspMsg;
	}
	/**
	 * 查询建议
	 * @param suggestReqMsg
	 * @return
	 */
	public SuggestRspMsg querySuggest(SuggestReqMsg suggestReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		suggestReqMsg.setMsghead(createHead("querySuggest"));
		// 获取响应信息
		SuggestRspMsg suggestRspMsg = changesService.suggestQuery(suggestReqMsg);
		// 返回响应信息
		return suggestRspMsg;
	}
	/**
	 * 保存建议
	 * @param suggestReqMsg
	 * @return
	 */
	public SuggestRspMsg saveSuggest(SuggestReqMsg suggestReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		suggestReqMsg.setMsghead(createHead("querySuggest"));
		// 获取响应信息
		SuggestRspMsg suggestRspMsg = changesService.suggestSave(suggestReqMsg);
		// 返回响应信息
		return suggestRspMsg;
	}
	/**
	 * 修改建议
	 * @param suggestReqMsg
	 * @return
	 */
	public SuggestRspMsg updateSuggest(SuggestReqMsg suggestReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		suggestReqMsg.setMsghead(createHead("querySuggest"));
		// 获取响应信息
		SuggestRspMsg suggestRspMsg = changesService.suggestUpdate(suggestReqMsg);
		// 返回响应信息
		return suggestRspMsg;
	}
	/**
	 * 删除建议
	 * @param suggestReqMsg
	 * @return
	 */
	public SuggestRspMsg delSuggest(SuggestReqMsg suggestReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		suggestReqMsg.setMsghead(createHead("querySuggest"));
		// 获取响应信息
		SuggestRspMsg suggestRspMsg = changesService.suggestDel(suggestReqMsg);
		// 返回响应信息
		return suggestRspMsg;
	}
	/**
	 * 查询商品评价
	 * @param evaluateReqMsg
	 * @return
	 */
	public EvaluateRspMsg queryEvaluate(EvaluateReqMsg evaluateReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		evaluateReqMsg.setMsghead(createHead("queryEvaluate"));
		// 获取响应信息
		EvaluateRspMsg evaluateRspMsg = changesService.evaluateQuery(evaluateReqMsg);
		// 返回响应信息
		return evaluateRspMsg;
	}
	/**
	 * 保存商品评价
	 * @param evaluateReqMsg
	 * @return
	 */
	public EvaluateRspMsg saveEvaluate(EvaluateReqMsg evaluateReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		evaluateReqMsg.setMsghead(createHead("saveEvaluate"));
		// 获取响应信息
		EvaluateRspMsg evaluateRspMsg = changesService.evaluateSave(evaluateReqMsg);
		// 返回响应信息
		return evaluateRspMsg;
	}
	/**
	 * 修改商品评价
	 * @param evaluateReqMsg
	 * @return
	 */
	public EvaluateRspMsg updateEvaluate(EvaluateReqMsg evaluateReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		evaluateReqMsg.setMsghead(createHead("updateEvaluate"));
		// 获取响应信息
		EvaluateRspMsg evaluateRspMsg = changesService.evaluateUpdate(evaluateReqMsg);
		// 返回响应信息
		return evaluateRspMsg;
	}
	/**
	 * 删除商品评价
	 * @param evaluateReqMsg
	 * @return
	 */
	public EvaluateRspMsg delEvaluate(EvaluateReqMsg evaluateReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		evaluateReqMsg.setMsghead(createHead("delEvaluate"));
		// 获取响应信息
		EvaluateRspMsg evaluateRspMsg = changesService.evaluateDel(evaluateReqMsg);
		// 返回响应信息
		return evaluateRspMsg;
	}
	/**
	 * 用户订单保存
	 * @param orderReqMsg
	 * @return
	 */
	public OrderRspMsg saveOrder(OrderReqMsg orderReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		orderReqMsg.setMsghead(createHead("saveOrder"));
		// 获取响应信息
		OrderRspMsg orderRspMsg = changesService.orderSave(orderReqMsg);
		// 返回响应信息
		return orderRspMsg;
	}
	/**
	 * 用户订单修改
	 * @param orderReqMsg
	 * @return
	 */
	public OrderRspMsg updateOrder(OrderReqMsg orderReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		orderReqMsg.setMsghead(createHead("updateOrder"));
		// 获取响应信息
		OrderRspMsg orderRspMsg = changesService.orderUpdate(orderReqMsg);
		// 返回响应信息
		return orderRspMsg;
	}
	/**
	 * 用户订单删除
	 * @param orderReqMsg
	 * @return
	 */
	public OrderRspMsg delOrder(OrderReqMsg orderReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		orderReqMsg.setMsghead(createHead("delOrder"));
		// 获取响应信息
		OrderRspMsg orderRspMsg = changesService.orderDel(orderReqMsg);
		// 返回响应信息
		return orderRspMsg;
	}

	public ProductRspMsg queryProduct(ProductReqMsg productReqMsg) {
		// 创建webService
		IEmallEXChangesService changesService = WSClientUtils.createEmallEXChangesService();
		// 添加请求头
		productReqMsg.setMsghead(createHead("queryProduct"));
		// 获取响应信息
		ProductRspMsg productRspMsg = changesService.productQuery(productReqMsg);
		// 返回响应信息
		return productRspMsg;
	}
	
	public ProductRspMsg delProduct(ProductReqMsg productReqMsg) {
		return null;
	}

	public ProductRspMsg saveProduct(ProductReqMsg productReqMsg) {
		return null;
	}

	public ProductRspMsg updateProduct(ProductReqMsg productReqMsg) {
		return null;
	}

}
