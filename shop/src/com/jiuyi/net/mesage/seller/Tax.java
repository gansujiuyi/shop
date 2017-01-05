package com.jiuyi.net.mesage.seller;

import java.io.Serializable;

 /**
 * 税务信息
 * @author lyn
 *
 */
@SuppressWarnings("serial")
public class Tax implements Serializable{
	/*税务登记证id*/
	private String taxId;
	/*纳税人类型*/
	private String taxType;
	/*纳税人识别号*/
	private String taxNo;
	/*纳税类型税码*/
	private String taxNum;
	/*税务登记证电子版 上传路径*/
	private String taxFilePath;
	/*一般纳税人资格证电子版 上传路径*/
	private String taxNorFilePath;
	
	public String getTaxId() {
		return taxId;
	}
	public void setTaxId(String taxId) {
		this.taxId = taxId;
	}
	public String getTaxType() {
		return taxType;
	}
	public void setTaxType(String taxType) {
		this.taxType = taxType;
	}
	public String getTaxNo() {
		return taxNo;
	}
	public void setTaxNo(String taxNo) {
		this.taxNo = taxNo;
	}
	public String getTaxNum() {
		return taxNum;
	}
	public void setTaxNum(String taxNum) {
		this.taxNum = taxNum;
	}
	public String getTaxFilePath() {
		return taxFilePath;
	}
	public void setTaxFilePath(String taxFilePath) {
		this.taxFilePath = taxFilePath;
	}
	public String getTaxNorFilePath() {
		return taxNorFilePath;
	}
	public void setTaxNorFilePath(String taxNorFilePath) {
		this.taxNorFilePath = taxNorFilePath;
	}
}
