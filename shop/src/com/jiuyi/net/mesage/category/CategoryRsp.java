package com.jiuyi.net.mesage.category;

import java.io.Serializable;
import java.util.List;

@SuppressWarnings("serial")
public class CategoryRsp implements Serializable{
	
	private Category category;
	
	private List<Category> categorys;

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public List<Category> getCategorys() {
		return categorys;
	}

	public void setCategorys(List<Category> categorys) {
		this.categorys = categorys;
	}
	
	
	
	
	
}
