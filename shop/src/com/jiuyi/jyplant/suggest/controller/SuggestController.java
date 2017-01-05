package com.jiuyi.jyplant.suggest.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jiuyi.jyplant.suggest.service.SuggestService;
import com.jiuyi.net.mesage.suggest.Suggest;
import com.jiuyi.net.mesage.suggest.SuggestReq;
import com.jiuyi.net.mesage.suggest.SuggestReqMsg;
import com.jiuyi.net.mesage.suggest.SuggestRsp;
import com.jiuyi.net.mesage.suggest.SuggestRspMsg;
import com.sun.istack.internal.logging.Logger;

@Controller
@RequestMapping(value="/suggest/")
public class SuggestController {
	
	Logger log = Logger.getLogger(SuggestController.class);
	
	@Autowired
	private SuggestService suggestService;
	/**
	 * 查询建议信息
	 * @return
	 */
	@RequestMapping(value="querySuggest")
	public ModelAndView querySuggest(String suggestPersonId){
		log.info("开始查询当前会员的建议信息");
		ModelAndView modelAndView = new ModelAndView();
		SuggestReqMsg suggestReqMsg = new SuggestReqMsg();
		SuggestReq suggestReq = new SuggestReq();
		Suggest suggest = new Suggest();
		suggest.setSuggestPersonId(suggestPersonId);
		suggestReq.setSuggest(suggest);
		suggestReqMsg.setSuggestReq(suggestReq);
		SuggestRspMsg suggestRspMsg = suggestService.querySuggest(suggestReqMsg);
		if("0000".equals(suggestRspMsg.getRetCode())){
			SuggestRsp suggestRsp = suggestRspMsg.getSuggestRsp();
			List<Suggest> suggests = suggestRsp.getSuggests();
			if(null != suggests && !"".equals(suggests)){
				log.info("开始查询当前会员的建议信息成功");
				modelAndView.setViewName("/pages/suggest/s_list");
				modelAndView.addObject("suggests", suggests);
				return modelAndView;
			}
			log.info("当前会员的建议信息为空");
			modelAndView.setViewName("/pages/address/error");
			return modelAndView;
			
		}
		log.info("开始查询当前会员的建议信息失败");
		modelAndView.setViewName("/pages/address/error");
		return modelAndView;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
