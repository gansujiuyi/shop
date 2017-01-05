package com.jiuyi.jyplant.evaluate.service;

import com.jiuyi.net.mesage.cpEvaluate.EvaluateReqMsg;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateRspMsg;

public interface EvaluateService {
	
	public EvaluateRspMsg queryEvaluate(EvaluateReqMsg evaluateReqMsg);
	
	public EvaluateRspMsg saveEvaluate(EvaluateReqMsg evaluateReqMsg);
	
	public EvaluateRspMsg updateEvaluate(EvaluateReqMsg evaluateReqMsg);
	
	public EvaluateRspMsg delEvaluate(EvaluateReqMsg evaluateReqMsg);
}
