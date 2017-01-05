package com.jiuyi.net.mesage.myCollection;

import com.jiuyi.net.base.Head;

public class CollectionReqMsg {

	/* 请求头 */
	protected Head msghead;
	protected CollectionReq collectionReq;

	public Head getMsghead() {
		return msghead;
	}

	public void setMsghead(Head msghead) {
		this.msghead = msghead;
	}

	public CollectionReq getCollectionReq() {
		return collectionReq;
	}

	public void setCollectionReq(CollectionReq collectionReq) {
		this.collectionReq = collectionReq;
	}

}
