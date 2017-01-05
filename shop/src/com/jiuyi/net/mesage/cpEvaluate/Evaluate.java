package com.jiuyi.net.mesage.cpEvaluate;

import java.io.Serializable;
import java.util.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;

/***
 * 商品评价
 * 
 * @author lyn
 * 
 */
@SuppressWarnings("serial")
@XmlRootElement(name = "Evaluate")
@XmlAccessorType(XmlAccessType.FIELD)
public class Evaluate implements Serializable {

	private String evalId;// 评价ID
	private String evalContent;// 评价内容
	private Date evalTime;// 评价时间
	private String evalPersonId;// 评价人ID
	private String evalProducdId;// 评价商品ID
	private String evalScore;// 评价分数


	public String getEvalId() {
		return evalId;
	}

	public void setEvalId(String evalId) {
		this.evalId = evalId;
	}

	public String getEvalContent() {
		return evalContent;
	}

	public void setEvalContent(String evalContent) {
		this.evalContent = evalContent;
	}
	public Date getEvalTime() {
		return evalTime;
	}

	public void setEvalTime(Date evalTime) {
		this.evalTime = evalTime;
	}
	public String getEvalPersonId() {
		return evalPersonId;
	}

	public void setEvalPersonId(String evalPersonId) {
		this.evalPersonId = evalPersonId;
	}

	public String getEvalProducdId() {
		return evalProducdId;
	}

	public void setEvalProducdId(String evalProducdId) {
		this.evalProducdId = evalProducdId;
	}

	public String getEvalScore() {
		return evalScore;
	}

	public void setEvalScore(String evalScore) {
		this.evalScore = evalScore;
	}

}
