package com.jiuyi.jyplant.mycollectonInfo.service;

import com.jiuyi.jyplant.mycollectonInfo.entity.CollectionInfo;
import com.jiuyi.utils.PageResults;

public interface CollectionInfoService {

	// 分页查询我的收藏
	public PageResults<CollectionInfo> queryPageCollectionInfo(
			CollectionInfo collectionInfo,
			PageResults<CollectionInfo> pageResults);

	// 保存收藏
	public boolean saveCollectionInfo(CollectionInfo collectionInfo);

	// 删除我的收藏
	public boolean deleteCollectionInfo(CollectionInfo collectionInfo);

}
