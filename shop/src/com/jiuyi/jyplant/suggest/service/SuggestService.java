package com.jiuyi.jyplant.suggest.service;

import com.jiuyi.net.mesage.suggest.SuggestReqMsg;
import com.jiuyi.net.mesage.suggest.SuggestRspMsg;

public interface SuggestService {
	
	public SuggestRspMsg querySuggest(SuggestReqMsg suggestReqMsg);
	
	public SuggestRspMsg saveSuggest(SuggestReqMsg suggestReqMsg);
	
	public SuggestRspMsg updateSuggest(SuggestReqMsg suggestReqMsg);
	
	public SuggestRspMsg delSuggest(SuggestReqMsg suggestReqMsg);
	
	
	
	
	
}
