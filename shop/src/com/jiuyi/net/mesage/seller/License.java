package com.jiuyi.net.mesage.seller;

import java.io.Serializable;
import java.util.Date;

/**
 * 营业执照
 * @author lyn
 *
 */
@SuppressWarnings("serial")
public class License implements Serializable{
	/*许可证id*/
	private String licenseId;
	/*商户id*/
	private String venderId;
	/*执照类型*/
	private String licenseType;
	/*公司名称*/
	private String companyName;
	/*营业执照注册号*/
	private String businessLicense;
	/*营业执照所在地*/
	private String licenseAddrIds;
	/*营业地址*/
	private String licenseAdd;
	/*营业期限开始开始*/
	private Date licenseExpDateStart;
	/*营业期限结束时间*/
	private Date licenseExpDateEnd;
	/*营业期限长期有效*/
	private Date isForEver;
	/*经营范围*/
	private String licenseArea;
	/*营业执照电子版上传路径*/
	private String licenseFilePath;
	
	public String getLicenseId() {
		return licenseId;
	}
	public void setLicenseId(String licenseId) {
		this.licenseId = licenseId;
	}
	public String getVenderId() {
		return venderId;
	}
	public void setVenderId(String venderId) {
		this.venderId = venderId;
	}
	public String getBusinessLicense() {
		return businessLicense;
	}
	public void setBusinessLicense(String businessLicense) {
		this.businessLicense = businessLicense;
	}
	public String getLicenseAddrIds() {
		return licenseAddrIds;
	}
	public void setLicenseAddrIds(String licenseAddrIds) {
		this.licenseAddrIds = licenseAddrIds;
	}
	public String getLicenseAdd() {
		return licenseAdd;
	}
	public void setLicenseAdd(String licenseAdd) {
		this.licenseAdd = licenseAdd;
	}
	public Date getLicenseExpDateStart() {
		return licenseExpDateStart;
	}
	public void setLicenseExpDateStart(Date licenseExpDateStart) {
		this.licenseExpDateStart = licenseExpDateStart;
	}
	public Date getLicenseExpDateEnd() {
		return licenseExpDateEnd;
	}
	public void setLicenseExpDateEnd(Date licenseExpDateEnd) {
		this.licenseExpDateEnd = licenseExpDateEnd;
	}
	public Date getIsForEver() {
		return isForEver;
	}
	public void setIsForEver(Date isForEver) {
		this.isForEver = isForEver;
	}
	public String getLicenseArea() {
		return licenseArea;
	}
	public void setLicenseArea(String licenseArea) {
		this.licenseArea = licenseArea;
	}
	public String getLicenseType() {
		return licenseType;
	}
	public void setLicenseType(String licenseType) {
		this.licenseType = licenseType;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getLicenseFilePath() {
		return licenseFilePath;
	}
	public void setLicenseFilePath(String licenseFilePath) {
		this.licenseFilePath = licenseFilePath;
	}
	
}	
