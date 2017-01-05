package com.jiuyi.jyplant.categorys.service.impl;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.jiuyi.jyplant.categorys.service.CategoryService;
import com.jiuyi.net.mesage.category.CategoryRspMsg;
import com.jiuyi.net.utils.EmallEXChangesUtils;

@Service("categoryService")
@Transactional
public class CategoryServiceImpl implements CategoryService{
	/**
	 * 查询所有商品信息
	 */
	@Override
	public CategoryRspMsg queryCategory() {
		return  EmallEXChangesUtils.getInstance().queryCategory();
	}

}
