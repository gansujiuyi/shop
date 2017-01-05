package com.jiuyi.jyplant.member.service.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.jiuyi.jyplant.member.service.EmaillService;
import com.jiuyi.net.mesage.email.EmaillReqMsg;
import com.jiuyi.net.mesage.email.EmaillRspMsg;
import com.jiuyi.net.utils.EmallEXChangesUtils;
@Service("emaillService")
@Transactional
public class EmaillServiceImpl implements EmaillService{

	/**
	 * 根据邮箱查询验证码
	 */
	@Override
	public EmaillRspMsg queryEmailCode(EmaillReqMsg emaillReqMsg) {
		EmaillRspMsg emaillRspMsg =  EmallEXChangesUtils.getInstance().queryEmailCode(emaillReqMsg);
		return emaillRspMsg;
	}
	/**
	 * 修改验证码状态
	 */
	@Override
	public EmaillRspMsg updateEmail(EmaillReqMsg emaillReqMsg) {
		EmaillRspMsg emaillRspMsg =  EmallEXChangesUtils.getInstance().updateEmail(emaillReqMsg);
		return emaillRspMsg;
	}
	/**
	 * 发送验证码
	 */
	@Override
	public EmaillRspMsg sendEmail(EmaillReqMsg emaillReqMsg) {
		EmaillRspMsg emaillRspMsg =  EmallEXChangesUtils.getInstance().sendEmail(emaillReqMsg);
		return emaillRspMsg;
	}

}
