package com.jiuyi.net.mesage.seller;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Shop implements Serializable {

	/* 店铺id */
	private String storeId;
	/* 店铺名称 */
	private String storeName;
	/* 账户余额 */
	private String accountBalance;
	/* 商户id */
	private String venderId;

	public String getStoreId() {
		return storeId;
	}

	public void setStoreId(String storeId) {
		this.storeId = storeId;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getAccountBalance() {
		return accountBalance;
	}

	public void setAccountBalance(String accountBalance) {
		this.accountBalance = accountBalance;
	}

	public String getVenderId() {
		return venderId;
	}

	public void setVenderId(String venderId) {
		this.venderId = venderId;
	}

}
