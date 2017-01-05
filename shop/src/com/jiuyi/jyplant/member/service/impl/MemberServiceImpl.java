package com.jiuyi.jyplant.member.service.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.jiuyi.jyplant.member.service.MemberInfoService;
import com.jiuyi.net.mesage.memberInfo.MemberInfoReq;
import com.jiuyi.net.mesage.memberInfo.MemberInfoReqMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfoRspMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfos;
import com.jiuyi.net.utils.EmallEXChangesUtils;
@Service("memberInfoService")
@Transactional
public class MemberServiceImpl implements MemberInfoService {
	/**
	 * 根据会员名查询会员信息 实现
	 */
	@Override
	public MemberInfoRspMsg queryMemberInfo(String  memberName) {
		//新建请求信息
		MemberInfos infos = new MemberInfos();
		infos.setMemberName(memberName);
		//新建请求体加入请求信息
		MemberInfoReq infoReq = new MemberInfoReq();
		infoReq.setMemberInfos(infos);
		//生成请求
		MemberInfoReqMsg infoReqMsg = new MemberInfoReqMsg();
		infoReqMsg.setMemberInfoReq(infoReq);
		//调用webService的工具类中的方法
		MemberInfoRspMsg infoRspMsg= EmallEXChangesUtils.getInstance().queryMemberInfo(infoReqMsg);
		//获取会员信息
		return infoRspMsg;
	}
	/**
	 * 保存会员信息  实现
	 */
	@Override
	public MemberInfoRspMsg saveMemberInfo(MemberInfoReqMsg infoReqMsg) {
		MemberInfoRspMsg infoRspMsg = EmallEXChangesUtils.getInstance().saveMemberInfo(infoReqMsg);
		return infoRspMsg;
	}
	/**
	 * 校验会员信息 实现
	 */
	@Override
	public MemberInfoRspMsg checkMemberInfo(MemberInfoReqMsg infoReqMsg) {
		MemberInfoRspMsg infoRspMsg = EmallEXChangesUtils.getInstance().checkMemberInfo(infoReqMsg);
		return infoRspMsg;
	}
	/**
	 * 修改会员信息
	 */
	@Override
	public MemberInfoRspMsg updateMemberInfo(MemberInfoReqMsg infoReqMsg) {
		MemberInfoRspMsg infoRspMsg = EmallEXChangesUtils.getInstance().updateMemberInfo(infoReqMsg);
		return infoRspMsg;
	}
	@Override
	public MemberInfoRspMsg processActivate(MemberInfoReqMsg infoReqMsg) {
		MemberInfoRspMsg infoRspMsg = EmallEXChangesUtils.getInstance().processActivate(infoReqMsg);
		return infoRspMsg;
	}


}
