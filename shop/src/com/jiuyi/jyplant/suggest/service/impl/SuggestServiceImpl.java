package com.jiuyi.jyplant.suggest.service.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.jiuyi.jyplant.suggest.service.SuggestService;
import com.jiuyi.net.mesage.suggest.SuggestReqMsg;
import com.jiuyi.net.mesage.suggest.SuggestRspMsg;
import com.jiuyi.net.utils.EmallEXChangesUtils;
@Transactional
@Service("suggestService")
public class SuggestServiceImpl implements SuggestService {

	@Override
	public SuggestRspMsg querySuggest(SuggestReqMsg suggestReqMsg) {
		SuggestRspMsg suggestRspMsg = EmallEXChangesUtils.getInstance().querySuggest(suggestReqMsg);
		return suggestRspMsg;
	}

	@Override
	public SuggestRspMsg saveSuggest(SuggestReqMsg suggestReqMsg) {
		SuggestRspMsg suggestRspMsg = EmallEXChangesUtils.getInstance().saveSuggest(suggestReqMsg);
		return suggestRspMsg;
	}

	@Override
	public SuggestRspMsg updateSuggest(SuggestReqMsg suggestReqMsg) {
		SuggestRspMsg suggestRspMsg = EmallEXChangesUtils.getInstance().updateSuggest(suggestReqMsg);
		return suggestRspMsg;
	}

	@Override
	public SuggestRspMsg delSuggest(SuggestReqMsg suggestReqMsg) {
		SuggestRspMsg suggestRspMsg = EmallEXChangesUtils.getInstance().delSuggest(suggestReqMsg);
		return suggestRspMsg;
	}
	
	
	
	
	
	
	
	
	
}
