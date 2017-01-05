package com.jiuyi.jyplant.evaluate.service.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.jiuyi.jyplant.evaluate.service.EvaluateService;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateReqMsg;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateRspMsg;
import com.jiuyi.net.utils.EmallEXChangesUtils;

@Transactional
@Service("evaluateService")
public class EvaluateServiceImpl implements EvaluateService{

	@Override
	public EvaluateRspMsg queryEvaluate(EvaluateReqMsg evaluateReqMsg) {
		EvaluateRspMsg evaluateRspMsg = EmallEXChangesUtils.getInstance().queryEvaluate(evaluateReqMsg);
		return evaluateRspMsg;
	}

	@Override
	public EvaluateRspMsg saveEvaluate(EvaluateReqMsg evaluateReqMsg) {
		EvaluateRspMsg evaluateRspMsg = EmallEXChangesUtils.getInstance().saveEvaluate(evaluateReqMsg);
		return evaluateRspMsg;
	}

	@Override
	public EvaluateRspMsg updateEvaluate(EvaluateReqMsg evaluateReqMsg) {
		EvaluateRspMsg evaluateRspMsg = EmallEXChangesUtils.getInstance().updateEvaluate(evaluateReqMsg);
		return evaluateRspMsg;
	}

	@Override
	public EvaluateRspMsg delEvaluate(EvaluateReqMsg evaluateReqMsg) {
		EvaluateRspMsg evaluateRspMsg = EmallEXChangesUtils.getInstance().delEvaluate(evaluateReqMsg);
		return evaluateRspMsg;
	}
	
	
}
