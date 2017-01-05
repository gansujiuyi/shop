package com.jiuyi.jyplant.evaluate.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jiuyi.jyplant.evaluate.service.EvaluateService;
import com.jiuyi.net.mesage.cpEvaluate.Evaluate;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateReq;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateReqMsg;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateRsp;
import com.jiuyi.net.mesage.cpEvaluate.EvaluateRspMsg;
import com.jiuyi.net.mesage.suggest.Suggest;
@Controller
@RequestMapping(value="/evaluate/")
public class EvaluateController {
	
	@Autowired
	private EvaluateService evaluateService;
	/**
	 * 查询建议信息
	 * @return
	 */
	@RequestMapping(value="querySuggest")
	public ModelAndView querySuggest(String evalPersonId,String evalProducdId){
		ModelAndView modelAndView = new ModelAndView();
		EvaluateReqMsg evaluateReqMsg = new EvaluateReqMsg();
		EvaluateReq evaluateReq = new EvaluateReq();
		Evaluate evaluate = new Evaluate();
		evaluate.setEvalPersonId(evalPersonId);
		evaluate.setEvalProducdId(evalProducdId);
		evaluateReq.setEvaluate(evaluate);
		evaluateReqMsg.setEvaluateReq(evaluateReq);
		EvaluateRspMsg evaluateRspMsg = evaluateService.queryEvaluate(evaluateReqMsg);
		EvaluateRsp evaluateRsp = evaluateRspMsg.getEvaluateRsp();
		List<Evaluate> evaluates = evaluateRsp.getEvaluates();
		if("0000".equals(evaluateRspMsg.getRetCode())){
			modelAndView.setViewName("");
			modelAndView.addObject("evaluates", evaluates);
			return null;
			
		}
		return null;
		
	}
	
	
	
	
}
