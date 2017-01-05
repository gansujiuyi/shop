package com.jiuyi.jyplant.mycollectonInfo.service.impl;

import org.springframework.stereotype.Service;

import com.jiuyi.jyplant.mycollectonInfo.entity.CollectionInfo;
import com.jiuyi.jyplant.mycollectonInfo.service.CollectionInfoService;
import com.jiuyi.net.mesage.myCollection.CollectionReq;
import com.jiuyi.net.mesage.myCollection.CollectionReqMsg;
import com.jiuyi.net.mesage.myCollection.CollectionRspMsg;
import com.jiuyi.net.service.IEmallEXChangesService;
import com.jiuyi.utils.PageResults;
import com.jiuyi.utils.WSClientUtils;

@Service("collectionInfoService")
public class CollectionInfoServiceImpl implements CollectionInfoService {

	@Override
	public PageResults<CollectionInfo> queryPageCollectionInfo(
			CollectionInfo collectionInfo,
			PageResults<CollectionInfo> pageResults) {
		IEmallEXChangesService changesService = WSClientUtils
				.createEmallEXChangesService();
		CollectionReqMsg collectionReqMsg = new CollectionReqMsg();
		CollectionReq collectionReq = new CollectionReq();
		collectionReq.setOpt("query");
		collectionReq.setCollectionInfo(collectionInfo);
		collectionReq.setPageResults(pageResults);
		collectionReqMsg.setCollectionReq(collectionReq);
		CollectionRspMsg collectionRspMsg = changesService
				.optCollectionInfo(collectionReqMsg);
		if (null != collectionRspMsg
				&& "0000".equals(collectionRspMsg.getRetCode())) {
			return collectionRspMsg.getCollectionRsp().getPageResults();
		}
		return null;
	}

	@Override
	public boolean saveCollectionInfo(CollectionInfo collectionInfo) {
		IEmallEXChangesService changesService = WSClientUtils
				.createEmallEXChangesService();
		CollectionReqMsg collectionReqMsg = new CollectionReqMsg();
		CollectionReq collectionReq = new CollectionReq();
		collectionReq.setOpt("save");
		collectionReq.setCollectionInfo(collectionInfo);
		collectionReqMsg.setCollectionReq(collectionReq);
		CollectionRspMsg collectionRspMsg = changesService
				.optCollectionInfo(collectionReqMsg);
		if (null != collectionRspMsg
				&& "0000".equals(collectionRspMsg.getRetCode())) {
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteCollectionInfo(CollectionInfo collectionInfo) {
		IEmallEXChangesService changesService = WSClientUtils
				.createEmallEXChangesService();
		CollectionReqMsg collectionReqMsg = new CollectionReqMsg();
		CollectionReq collectionReq = new CollectionReq();
		collectionReq.setOpt("delete");
		collectionReq.setCollectionInfo(collectionInfo);
		collectionReqMsg.setCollectionReq(collectionReq);
		CollectionRspMsg collectionRspMsg = changesService
				.optCollectionInfo(collectionReqMsg);
		if (null != collectionRspMsg
				&& "0000".equals(collectionRspMsg.getRetCode())) {
			return true;
		}
		return false;
	}

}
