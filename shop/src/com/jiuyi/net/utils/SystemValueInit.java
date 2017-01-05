package com.jiuyi.net.utils;

import javax.servlet.http.HttpServlet;


/*
 * 系统初始化所需要用的参数
 */
@SuppressWarnings("serial")
public class SystemValueInit extends HttpServlet {

	private static String Version="V1.0";// 版本号
	private static String TranChannel="005";// 渠道类型
	private static String MbTranChannel="007";// 渠道类型007
	private static String AuthCode="102100009980";// 认证码
	public static String SERVICEIMGURL="";//图片URL
	public static String SYSTEMDEVNO="A1000001";//验证密码终端号
	public static String SEARCHCUSTID="";
	


	/**
	 * Constructor of the object.
	 */
	public SystemValueInit() {
		super();
	}
	public static String getImage(String value){
		if(value==null||value.trim().equals("")){
			value="/NoPic.JPG";
		}
		
		return SERVICEIMGURL+value;
	}
	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public static String getVersion() {
		return Version;
	}

	public static String getTranChannel() {
		return TranChannel;
	}

	public static String getAuthCode() {
		return AuthCode;
	}
	public static String getMbTranChannel() {
		return MbTranChannel;
	}
}
