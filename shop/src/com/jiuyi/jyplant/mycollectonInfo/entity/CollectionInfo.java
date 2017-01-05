package com.jiuyi.jyplant.mycollectonInfo.entity;

import java.io.Serializable;
import java.util.Date;

/***
 * 我的收藏
 * @author baizilin
 *
 */
@SuppressWarnings("serial")
public class CollectionInfo implements Serializable {


	private String collectId;// 主键ID
	private String collectPersonId;// 收藏人ID
	private Date collectTiem;// 收藏时间
	private String collectProductId;// 收藏商品ID
	private String collectShopId;//收藏店铺ID;
	public CollectionInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CollectionInfo(String collectId, String collectPersonId,
			Date collectTiem, String collectProductId, String collectShopId) {
		super();
		this.collectId = collectId;
		this.collectPersonId = collectPersonId;
		this.collectTiem = collectTiem;
		this.collectProductId = collectProductId;
		this.collectShopId = collectShopId;
	}
	
	public String getCollectId() {
		return collectId;
	}
	public void setCollectId(String collectId) {
		this.collectId = collectId;
	}
	
	public String getCollectPersonId() {
		return collectPersonId;
	}
	public void setCollectPersonId(String collectPersonId) {
		this.collectPersonId = collectPersonId;
	}
	public Date getCollectTiem() {
		return collectTiem;
	}
	public void setCollectTiem(Date collectTiem) {
		this.collectTiem = collectTiem;
	}
	public String getCollectProductId() {
		return collectProductId;
	}
	public void setCollectProductId(String collectProductId) {
		this.collectProductId = collectProductId;
	}
	public String getCollectShopId() {
		return collectShopId;
	}
	public void setCollectShopId(String collectShopId) {
		this.collectShopId = collectShopId;
	}
	
}
