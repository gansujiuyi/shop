package com.jiuyi.net.service;

import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;

import org.springframework.stereotype.Service;

import com.jiuyi.net.mesage.category.CategoryReqMsg;
import com.jiuyi.net.mesage.category.CategoryRspMsg;
import com.jiuyi.net.mesage.citys.CitysReqMsg;
import com.jiuyi.net.mesage.citys.CitysRspMsg;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateReqMsg;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateRspMsg;
import com.jiuyi.net.mesage.email.EmaillReqMsg;
import com.jiuyi.net.mesage.email.EmaillRspMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfoReqMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfoRspMsg;
import com.jiuyi.net.mesage.myCollection.CollectionReqMsg;
import com.jiuyi.net.mesage.myCollection.CollectionRspMsg;
import com.jiuyi.net.mesage.orderInfo.OrderReqMsg;
import com.jiuyi.net.mesage.orderInfo.OrderRspMsg;
import com.jiuyi.net.mesage.orderInfo.address.AddressReqMsg;
import com.jiuyi.net.mesage.orderInfo.address.AddressRspMsg;
import com.jiuyi.net.mesage.product.ProductReqMsg;
import com.jiuyi.net.mesage.product.ProductRspMsg;
import com.jiuyi.net.mesage.suggest.SuggestReqMsg;
import com.jiuyi.net.mesage.suggest.SuggestRspMsg;
import com.jiuyi.net.mesage.userinfo.UserInfoReqMsg;
import com.jiuyi.net.mesage.userinfo.UserInfoRspMsg;

@WebService
@Service
public interface IEmallEXChangesService {
	/**
	 * 后台用户登录
	 * @param infoReqMsg
	 * @return
	 */
	@WebResult(name = "userInfoRspMsg_queryUserInfo")
	public UserInfoRspMsg queryUserInfo(@WebParam(name = "jiuyimsg") UserInfoReqMsg  infoReqMsg);
	
	/***
	 * 会员注册
	 * 
	 * @param memberInfoReq
	 * @return
	 */
	@WebResult(name = "infoRsqMsg_memberReg")
	public MemberInfoRspMsg memberReg(@WebParam(name = "jiuyimsg") MemberInfoReqMsg memberInfoReq);	/**
	 * 会员登录
	 * @param memberInfoReq
	 * @return
	 */
	@WebResult(name = "infoRspMsg_memberQuery")
	public MemberInfoRspMsg memberQuery(@WebParam(name="jiuyimsg")MemberInfoReqMsg infoReqMsg);
	/**
	 * 校验会员 接口
	 * @param infoReqMsg
	 * @return
	 */
	@WebResult(name = "infoRspMsg_memberCheck")
	public MemberInfoRspMsg memberCheck(@WebParam(name="jiuyimsg") MemberInfoReqMsg infoReqMsg);
	/**
	 * 查询所有商品分类信息
	 */
	@WebResult(name = "categoryRspMsg_queryCategorys")
	public CategoryRspMsg queryCategorys(@WebParam(name="jiuyimsg") CategoryReqMsg categoryReqMsg);
	/**
	 * 修改会员信息
	 * @param infoReqMsg
	 * @return
	 */
	@WebResult(name = "infoRspMsg_memberUpdate")
	public MemberInfoRspMsg memberUpdate(@WebParam(name="jiuyimsg") MemberInfoReqMsg infoReqMsg);
	/**
	 * 用户订单查询
	 * @param orderReqMsg
	 * @return
	 */
	@WebResult(name = "orderRspMsg_orderQuery")
	public OrderRspMsg orderQuery(@WebParam(name="jiuyimsg") OrderReqMsg orderReqMsg);
	/**
	 * 发送邮件验证码
	 * @param emaillReqMsg
	 * @return
	 */
	@WebResult(name = "emaillRspMsg_sendEmaillCode")
	public EmaillRspMsg sendEmaillCode(@WebParam(name="jiuyimsg") EmaillReqMsg emaillReqMsg);
	/**
	 * 根据邮箱地址查询验证码
	 * @param emaillReqMsg
	 * @return
	 */
	@WebResult(name = "emaillRspMsg_emaillQuery")
	public EmaillRspMsg emaillQuery(@WebParam(name="jiuyimsg") EmaillReqMsg emaillReqMsg);
	/**
	 * 修改验证码状态
	 * @param emaillReqMsg
	 * @return
	 */
	@WebResult(name = "emaillRspMsg_emaillUpdate")
	public EmaillRspMsg emaillUpdate(@WebParam(name="jiuyimsg") EmaillReqMsg emaillReqMsg);
	
	
	/***
	 * 查询省、市、县、区、镇、村
	 */
	@WebResult(name = "citysRspMsg")
	public CitysRspMsg queryCitys(@WebParam(name="jiuyimsg") CitysReqMsg citysReqMsg);
	
	
	/***
	 * 保存我的收藏、查询、删除
	 */
	@WebResult(name = "collectionRspMsg")
	public CollectionRspMsg optCollectionInfo(@WebParam(name="jiuyimsg") CollectionReqMsg collectionReqMsg);

	/**
	 * 查询收件人信息
	 * @return
	 */
	@WebResult(name = "addressRspMsg_addressQuery")
	public AddressRspMsg addressQuery(@WebParam(name="jiuyimsg") AddressReqMsg addressReqMsg);
	/**
	 * 保存收件人信息
	 * @param addressReqMsg
	 * @return
	 */
	@WebResult(name = "addressRspMsg_addressSave")
	public AddressRspMsg addressSave(@WebParam(name="jiuyimsg") AddressReqMsg addressReqMsg);
	/**
	 * 删除收件人信息
	 * @param addressReqMsg
	 * @return
	 */
	@WebResult(name = "addressRspMsg_addressDel")
	public AddressRspMsg addressDel(@WebParam(name="jiuyimsg") AddressReqMsg addressReqMsg);
	/**
	 * 修改收件人信息
	 * @param addressReqMsg
	 * @return
	 */
	@WebResult(name = "addressRspMsg_addressUpdate")
	public AddressRspMsg addressUpdate(@WebParam(name="jiuyimsg") AddressReqMsg addressReqMsg);
	/**
	 * 激活会员信息
	 * @param infoReqMsg
	 * @return
	 */
	@WebResult(name = "infoRspMsg_processActivate")
	public MemberInfoRspMsg processActivate(@WebParam(name="jiuyimsg")MemberInfoReqMsg infoReqMsg);
	/**
	 * 校验地址信息是否重复
	 * @param addressReqMsg
	 * @return
	 */
	@WebResult(name = "addressRspMsg_addressCheck")
	public AddressRspMsg addressCheck(@WebParam(name="jiuyimsg") AddressReqMsg addressReqMsg);
	
	/**
	 * 查询建议
	 * @param suggestReqMsg
	 * @return
	 */
	@WebResult(name = "suggestRspMsg_suggestQuery")
	public SuggestRspMsg suggestQuery(@WebParam(name="jiuyimsg") SuggestReqMsg suggestReqMsg);
	/**
	 * 保存建议
	 * @param suggestReqMsg
	 * @return
	 */
	@WebResult(name = "suggestRspMsg_suggestSave")
	public SuggestRspMsg suggestSave(@WebParam(name="jiuyimsg") SuggestReqMsg suggestReqMsg);
	/**
	 * 修改建议
	 * @param suggestReqMsg
	 * @return
	 */
	@WebResult(name = "suggestRspMsg_suggestUpdate")
	public SuggestRspMsg suggestUpdate(@WebParam(name="jiuyimsg") SuggestReqMsg suggestReqMsg);
	/**
	 * 删除建议
	 * @return
	 */
	@WebResult(name = "suggestRspMsg_suggestDel")
	public SuggestRspMsg suggestDel(@WebParam(name="jiuyimsg") SuggestReqMsg suggestReqMsg);
	
	/**
	 * 查询商品评价
	 * @param evaluateReqMsg
	 * @return
	 */
	@WebResult(name = "evaluateRspMsg_evaluateQuery")
	public EvaluateRspMsg evaluateQuery(@WebParam(name="jiuyimsg")EvaluateReqMsg evaluateReqMsg);
	/**
	 * 保存商品评价
	 * @param evaluateReqMsg
	 * @return
	 */
	@WebResult(name = "evaluateRspMsg_evaluateSave")
	public EvaluateRspMsg evaluateSave(@WebParam(name="jiuyimsg")EvaluateReqMsg evaluateReqMsg);
	/**
	 * 修改商品评价
	 * @param evaluateReqMsg
	 * @return
	 */
	@WebResult(name = "evaluateRspMsg_EvaluateUpdate")
	public EvaluateRspMsg evaluateUpdate(@WebParam(name="jiuyimsg")EvaluateReqMsg evaluateReqMsg);
	/**
	 * 删除商品评价
	 * @param evaluateReqMsg
	 * @return
	 */
	@WebResult(name = "evaluateRspMsg_evaluateDel")
	public EvaluateRspMsg evaluateDel(@WebParam(name="jiuyimsg")EvaluateReqMsg evaluateReqMsg);
	/**
	 * 用户订单保存
	 * @param orderReqMsg
	 * @return
	 */
	@WebResult(name = "orderRspMsg_orderSave")
	public OrderRspMsg orderSave(@WebParam(name="jiuyimsg") OrderReqMsg orderReqMsg);
	/**
	 * 用户订单修改
	 * @param orderReqMsg
	 * @return
	 */
	@WebResult(name = "orderRspMsg_orderUpdate")
	public OrderRspMsg orderUpdate(@WebParam(name="jiuyimsg") OrderReqMsg orderReqMsg);
	/**
	 * 用户订单删除
	 * @param orderReqMsg
	 * @return
	 */
	@WebResult(name = "orderRspMsg_orderDel")
	public OrderRspMsg orderDel(@WebParam(name="jiuyimsg") OrderReqMsg orderReqMsg);
	/**
	 * 分页查询商品信息
	 * @param productReqMsg
	 * @return
	 */
	@WebResult(name = "productRspMsg_productQuery")
	public ProductRspMsg productQuery(@WebParam(name="jiuyimsg") ProductReqMsg productReqMsg);
	
	
	
	
}
