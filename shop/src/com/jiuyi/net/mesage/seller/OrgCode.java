package com.jiuyi.net.mesage.seller;

import java.io.File;
import java.io.Serializable;
import java.util.Date;

/**
 * 组织机构代码证
 * 
 * @author lyn
 * 
 */
@SuppressWarnings("serial")
public class OrgCode implements Serializable {
	/* 组织机构代码证id */
	private String orgCodeId;
	/* 组织机构代码 */
	private String orgCode;
	/* 组织机构代码证有效期 开始 */
	private Date orgExpDateStart;
	/* 组织机构代码证有效期 结束 */
	private Date orgExpDateEnd;
	/* 组织机构代码证有效期 长期 */
	private Date isForEver;
	/* 组织机构代码证上传路径 */
	private File orgFilePath;

	public String getOrgCodeId() {
		return orgCodeId;
	}

	public void setOrgCodeId(String orgCodeId) {
		this.orgCodeId = orgCodeId;
	}

	public String getOrgCode() {
		return orgCode;
	}

	public void setOrgCode(String orgCode) {
		this.orgCode = orgCode;
	}

	public Date getOrgExpDateStart() {
		return orgExpDateStart;
	}

	public void setOrgExpDateStart(Date orgExpDateStart) {
		this.orgExpDateStart = orgExpDateStart;
	}

	public Date getOrgExpDateEnd() {
		return orgExpDateEnd;
	}

	public void setOrgExpDateEnd(Date orgExpDateEnd) {
		this.orgExpDateEnd = orgExpDateEnd;
	}

	public Date getIsForEver() {
		return isForEver;
	}

	public void setIsForEver(Date isForEver) {
		this.isForEver = isForEver;
	}

	public File getOrgFilePath() {
		return orgFilePath;
	}

	public void setOrgFilePath(File orgFilePath) {
		this.orgFilePath = orgFilePath;
	}

}