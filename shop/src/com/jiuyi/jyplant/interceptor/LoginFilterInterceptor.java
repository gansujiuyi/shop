package com.jiuyi.jyplant.interceptor;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.jiuyi.net.mesage.memberInfo.MemberInfos;

/**
 * 登录认证的拦截器
 */
public class LoginFilterInterceptor implements HandlerInterceptor {
	
	
	private List<String> excludeUrls;// 不需要拦截的资源

	public List<String> getExcludeUrls() {
		return excludeUrls;
	}

	public void setExcludeUrls(List<String> excludeUrls) {
		this.excludeUrls = excludeUrls;
	}

	/**
	 * Handler执行完成之后调用这个方法
	 */
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception exc)
			throws Exception {

	}

	/**
	 * Handler执行之后，ModelAndView返回之前调用这个方法
	 */
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
	}

	/**
	 * Handler执行之前调用这个方法
	 */
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		// 获取请求的URL
		String url = request.getRequestURI();
		excludeUrls = new ArrayList<String>();
		excludeUrls.add(request.getContextPath()+"/index/index.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/toMemberInfoLogin.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/valiCode.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/memberInfoLoginCheck.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/logOut.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/toMemberInfoReg1.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/toMemberInfoReg2.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/toMemberInfoReg3.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/memberReg.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/sendEmailCode.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/checkEmailCode.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/checkInfo.html");
		excludeUrls.add(request.getContextPath()+"/memberInfo/saveMemberInfos.html");
		
		// 获取Session
		HttpSession session = request.getSession();
		MemberInfos memberInfos = (MemberInfos) session.getAttribute("memberInfo");
		if (excludeUrls.contains(url)) {// 如果要访问的资源是不需要验证的
			return true;
		}
		if (null != memberInfos) {
			return true;
		}
		// 不符合条件的，跳转到登录界面
		request.getRequestDispatcher("/pages/login.jsp").forward(request,response);
		return false;
	}

}
