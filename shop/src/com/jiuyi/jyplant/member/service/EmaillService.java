package com.jiuyi.jyplant.member.service;

import com.jiuyi.net.mesage.email.EmaillReqMsg;
import com.jiuyi.net.mesage.email.EmaillRspMsg;

public interface EmaillService {

	/**
	 * 根据邮箱查询验证码
	 * @param emaillReqMsg
	 * @return
	 */
	public EmaillRspMsg queryEmailCode(EmaillReqMsg emaillReqMsg);
	/**
	 * 修改验证码状态
	 * @param emaillReqMsg
	 * @return
	 */
	public EmaillRspMsg updateEmail(EmaillReqMsg emaillReqMsg);
	/**
	 * 发送验证码
	 * @param emaillReqMsg
	 * @return
	 */
	public EmaillRspMsg sendEmail(EmaillReqMsg emaillReqMsg);
	
	
	
	
	
	
	
}
