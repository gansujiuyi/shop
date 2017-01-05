package com.jiuyi.jyplant.member.service;

import com.jiuyi.net.mesage.memberInfo.MemberInfoReqMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfoRspMsg;

public interface MemberInfoService {
	/**
	 * 根据账户名查询会员信息
	 * @param memberName
	 * @return
	 */
	public MemberInfoRspMsg queryMemberInfo(String  memberName);
	/**
	 * 保存会员信息
	 * @param infoReqMsg
	 * @return
	 */
	public MemberInfoRspMsg saveMemberInfo(MemberInfoReqMsg infoReqMsg);
	/**
	 * 校验会员信息
	 * @param infoReqMsg
	 * @return
	 */
	public MemberInfoRspMsg checkMemberInfo(MemberInfoReqMsg infoReqMsg);
	/**
	 * 修改会员信息
	 * @param infoReqMsg
	 * @return
	 */
	public MemberInfoRspMsg updateMemberInfo(MemberInfoReqMsg infoReqMsg);
	/**
	 * 激活会员信息
	 * @param infoReqMsg
	 * @return
	 */
	public MemberInfoRspMsg processActivate(MemberInfoReqMsg infoReqMsg);
	
}
