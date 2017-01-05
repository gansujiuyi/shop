package com.jiuyi.jyplant.member.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jiuyi.jyplant.member.service.EmaillService;
import com.jiuyi.jyplant.member.service.MemberInfoService;
import com.jiuyi.net.mesage.email.Emaill;
import com.jiuyi.net.mesage.email.EmaillReq;
import com.jiuyi.net.mesage.email.EmaillReqMsg;
import com.jiuyi.net.mesage.email.EmaillRspMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfoReq;
import com.jiuyi.net.mesage.memberInfo.MemberInfoReqMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfoRsp;
import com.jiuyi.net.mesage.memberInfo.MemberInfoRspMsg;
import com.jiuyi.net.mesage.memberInfo.MemberInfos;
import com.jiuyi.utils.MD5;

/**
 * 会员管理
 * 
 * @author baizilin
 * @version 1.0v
 */
@Controller
@RequestMapping("/memberInfo/")
public class MemberControl {

	Logger log = Logger.getLogger(MemberControl.class);

	@Autowired
	private MemberInfoService memberInfoService;
	@Autowired
	private EmaillService emaillService;
	
	
	/**
	 * 进入登录页面
	 * @param memberInfo
	 * @return
	 */
	@RequestMapping(value = "toMemberInfoLogin")
	public String toLogin(HttpServletRequest request, HttpSession session) {
		Object o = request.getSession().getAttribute("memberInfo");
		if (null != o) {
			request.getSession().removeAttribute("memberInfo");
		}
		return "/pages/login";
	}
	/**
	 * 校验验证码
	 * @return
	 */
	@RequestMapping(value = "valiCode")
	@ResponseBody
	public String valiCode(HttpSession session ,String imagecode){
		//从Session中获取imagecode
		if(null!=imagecode && !"".equals(imagecode)){
			String sV = (String)session.getAttribute("validateCode");
			System.out.println(sV +"  "+ imagecode);
			if(sV.equalsIgnoreCase(imagecode)){
				return "true";
			}else{
				return "false";
			}
		}
		return "false";
	}
	
	/**
	 * 登录验证
	 * @return
	 */
	@RequestMapping(value = "memberInfoLoginCheck")
	public ModelAndView memberInfoLoginCheck(HttpServletRequest request, HttpSession session) {
		ModelAndView mav = null;
		try {
			String memberName = request.getParameter("memberName");
			String mpassWord = request.getParameter("mpassWord");
			if (!request.getMethod().equals("POST")) {
				request.setAttribute("message", "支持POST方法提交！");
			}
			if (null == memberName || null == mpassWord || "".equals(memberName)
					|| "".equals(mpassWord)) {
				log.info("用户名或密码为空.....");
				request.setAttribute("message", "用户名或密码不能为空！");
				mav = new ModelAndView();
				mav.setViewName("/pages/login");
				return mav;
			}
			// 验证用户账号与密码是否正确
			mpassWord = MD5.HPEncode(mpassWord, "GBK");
			MemberInfoRspMsg infoRspMsg = memberInfoService.queryMemberInfo(memberName);
			if(null!=infoRspMsg &&  infoRspMsg.getRetCode().equals("0000")){
				MemberInfos memberInfo = infoRspMsg.getMemberInfoRsp().getMemberInfos();
				//判断会员状态
				if(null!=memberInfo){
					//会员未激活
					if("2".equals(memberInfo.getMemberStatus())){
						mav = new ModelAndView();
						request.setAttribute("message", "账户未激活,请先激活！");
						mav.setViewName("/pages/login");
						log.info("用户:"+memberName+"还未激活！");
						return mav;
					}
					//会员已锁定
					if("0".equals(memberInfo.getMemberStatus())){
						mav = new ModelAndView();
						request.setAttribute("message", "账户已锁定！");
						mav.setViewName("/pages/login");
						log.info("会员:"+memberName+"已锁定，请联系管理员！");
						return mav;
					}
					//密码不正确
					if (!memberInfo.getMpassWord().equals(mpassWord)) {
						log.error("用户或密码不正确.....");
						request.setAttribute("message", "用户或密码不正确！");
						mav = new ModelAndView();
						mav.setViewName("/pages/login");
						return mav;
					}
					// 正常登录
					mav = new ModelAndView();
					mav.setViewName("/pages/main");
					session.setAttribute("memberInfo", memberInfo);
					log.info("会员:"+memberName+"deng登录成功！");
					return mav;	
				}
			}else{
				//会员不存在，注册会员
				mav = new ModelAndView();
				mav.setViewName("/pages/memberInfo/m_register_1");
				log.info("会员还未注册");
				return mav;
			}
			return null;
		} catch (Exception ae) {
			request.setAttribute("message", "登录异常，请联系管理员！");
			mav = new ModelAndView();
			mav.setViewName("/pages/login");
			return mav;
		}
		
	}
	/**
	 * 登出会员
	 * @return
	 */
	@RequestMapping(value="logOut")
	public String logOut(HttpSession session){
	    session.removeAttribute("memberInfo");
		// 清除Session
		session.invalidate();
		return "redirect:toMemberInfoLogin.html";
	}
	/**
	 * 跳转账户信息
	 * @return
	 */
	@RequestMapping(value="accountInfo")
	public ModelAndView accountInfo(String memberId){
		log.info("开始查询账户信息.....");
		ModelAndView mav = null;
		if(null == memberId && "".equals(memberId)){
			mav = new ModelAndView();
			mav.setViewName("/pages/login");
			log.info("账户信息错误会员id为空");
			return mav;
		}
		String security_val = "低";
		MemberInfoRspMsg infoRspMsg = memberInfoService.queryMemberInfo(memberId);
		if(null != infoRspMsg && infoRspMsg.getRetCode().equals("0000")){
			MemberInfoRsp infoRsp = infoRspMsg.getMemberInfoRsp();
			MemberInfos memberInfos = infoRsp.getMemberInfos();
			if(null == memberInfos && "".equals(memberInfos)){
				mav = new ModelAndView();
				mav.setViewName("/pages/login");
				log.info("系统错误");
				return mav;
			}
			mav = new ModelAndView();
			mav.setViewName("/pages/memberInfo/m_accountInfo");
			mav.addObject("memberInfos", memberInfos);
			if (!"".equals(memberInfos.getMemberEmail())
					&& null != memberInfos.getMemberEmail()
					&& null != memberInfos.getPhoneNo()
					&& !"".equals(memberInfos.getPhoneNo())) {
				security_val = "中";
			}
			if (!"".equals(memberInfos.getMemberEmail())
					&& null != memberInfos.getMemberEmail()
					&& (!"".equals(memberInfos.getPhoneNo()) && null != memberInfos
							.getPhoneNo())
					&& !"".equals(memberInfos.getMemberQuestion())
					&& null != memberInfos.getMemberQuestion()
					&& !"".equals(memberInfos.getMemberAnswer())
					&& null != memberInfos.getMemberAnswer()) {
				security_val = "高";
			}
			mav.addObject("security_val", security_val);
			return mav;
		}else{
			mav = new ModelAndView();
			mav.setViewName("/pages/login");
			log.info("系统错误");
			return mav;
		}
	}
	/**
	 * 跳转到注册页面1
	 * @return
	 */
	@RequestMapping(value="toMemberInfoReg1")
	public String toMemberInfoReg1(){
		
		return "/pages/memberInfo/m_register_1";
	}
	/**
	 * 发送邮件验证码
	 */
	@RequestMapping(value="sendEmailCode")
	@ResponseBody
	public String sendEmailCode(String memberEmail){
		if (null != memberEmail && !"".equals(memberEmail)) {
			EmaillReqMsg emaillReqMsg = new EmaillReqMsg();
			EmaillReq emaillReq = new EmaillReq();
			Emaill emaill = new Emaill();
			emaill.setToWhere(memberEmail);
			emaillReqMsg.setEmaillReq(emaillReq);
			emaillReq.setEmaill(emaill);
			emaillReqMsg.setEmaillReq(emaillReq);
			EmaillRspMsg emaillRspMsg = emaillService.sendEmail(emaillReqMsg);
			if("0000".equals(emaillRspMsg.getRetCode())){
				log.info("发送验证码成功");
				return "true";
			}else{
				log.info("发送验证码失败");
				return "fasle";
			}
		}else{
			log.info("邮箱地址不存在");
			return "false";
		}
	}
	/**
	 * 校验验证
	 * @param memberEmail
	 * @param emailCode
	 * @return
	 */
	@RequestMapping(value="checkEmailCode")
	@ResponseBody
	public String checkEmailCode(String memberEmail,String emailCode){
		if (null != memberEmail && null != emailCode) {
			EmaillReqMsg emaillReqMsg = new EmaillReqMsg();
			EmaillReq emaillReq = new EmaillReq();
			Emaill email = new Emaill();
			email.setToWhere(memberEmail);
			emaillReqMsg.setEmaillReq(emaillReq);
			emaillReq.setEmaill(email);
			emaillReqMsg.setEmaillReq(emaillReq);
			EmaillRspMsg emaillRspMsg = emaillService.queryEmailCode(emaillReqMsg);
			Emaill emaills = emaillRspMsg.getEmaillRsp().getEmaill();
			Date currentTime = new Date();
			if(null != emaills && !"".equals(emaills)){
					if(currentTime.before(emaills.getLastActivateTime())){
						if("0".equals(emaills.getCodeStatus())){
							if(emailCode.equalsIgnoreCase(emaills.getVerificationCode())){
								emaills.setCodeStatus("1");
								emaillReq.setEmaill(emaills);
								emaillReqMsg.setEmaillReq(emaillReq);
								emaillService.updateEmail(emaillReqMsg);
								log.info("验证码验证成功！");
								return "true";
							}else{
								log.info("验证码验证失败，您输入的验证码不正确");
								return "false";
							}
						}
					}else{
						log.info("验证码已失效，请点击重新发送验证码");
						return "false";
					}
			}
		}else{
			log.info("验证码不能为空！");
			return "false";
		}
		log.info("验证码已失效，请重新发送验证码");
		return "false";
	}
	
	/**
	 * 校验注册信息是否重复
	 */
	@RequestMapping(value="checkInfo")
	@ResponseBody
	public String checkInfo(String memberName,String memberEmail){
		
		if(null != memberName && !"".equals(memberName) || null != memberEmail && !"".equals(memberEmail)){
			MemberInfoReqMsg  infoReqMsg = new MemberInfoReqMsg();
			MemberInfoReq infoReq = new MemberInfoReq();
			MemberInfos memberInfos = new MemberInfos();
			memberInfos.setMemberName(memberName);
			memberInfos.setMemberEmail(memberEmail);
			memberInfos.setMemberRegTime(new Date());
			memberInfos.setMemberRegTime(new Date());
			infoReq.setMemberInfos(memberInfos);
			infoReqMsg.setMemberInfoReq(infoReq);
			MemberInfoRspMsg  infoRspMsg = memberInfoService.checkMemberInfo(infoReqMsg);
			if("0000".equals(infoRspMsg.getRetCode()) &&  infoRspMsg.getMemberInfoRsp().isCheck()==true){
				return "true";
			}
		}
		return "false";
	}
	
	/**
	 * 跳转到注册页面2
	 * @return
	 */
	@RequestMapping(value="toMemberInfoReg2")
	public ModelAndView toMemberInfoReg2(MemberInfos memberInfos){
		ModelAndView modelAndView = null;
		modelAndView = new ModelAndView();
		modelAndView.setViewName("/pages/memberInfo/m_register_2");
		modelAndView.addObject("memberInfos", memberInfos);
		return modelAndView;
	}
	/**
	 * 跳转到注册页面3
	 * @return
	 */
	@RequestMapping(value="toMemberInfoReg3")
	public ModelAndView toMemberInfoReg3(MemberInfos memberInfos){
		ModelAndView modelAndView = null;
		modelAndView = new ModelAndView();
		modelAndView.setViewName("/pages/memberInfo/m_register_3");
		modelAndView.addObject("memberInfos", memberInfos);
		return modelAndView;
	}
	/**
	 * 保存会员注册信息
	 * @return
	 */
	@RequestMapping(value="saveMemberInfos")
	public ModelAndView saveMemberInfos(@ModelAttribute("memberInfos") MemberInfos memberInfos){
		log.info("会员注册开始......");
		ModelAndView model = new ModelAndView();
		if(null == memberInfos && "".equals(memberInfos)){
			log.error("注册会员信息失败");
			model.setViewName("/pages/memberInfo/m_fail");
			return model;
		}
		String mpassWord = MD5.HPEncode(memberInfos.getMpassWord(), "GBK");
		memberInfos.setMpassWord(mpassWord);
		memberInfos.setMemberRegTime(new Date());
		MemberInfoReqMsg infoReqMsg = new MemberInfoReqMsg();
		MemberInfoReq memberInfoReq = new MemberInfoReq();
		memberInfos.setMemberAddress("");
		memberInfos.setMemberStatus("2");
		memberInfos.setMemerIdNo("");
		memberInfoReq.setMemberInfos(memberInfos);
		infoReqMsg.setMemberInfoReq(memberInfoReq);
		log.info("开始校验会员是否重复......");
		MemberInfoRspMsg infoRspMsg2 = memberInfoService.checkMemberInfo(infoReqMsg);
		boolean check = infoRspMsg2.getMemberInfoRsp().isCheck();
		if(check){
			log.error("会员已存在");
			model.setViewName("/pages/memberInfo/m_fail");
			return model;
		}
		MemberInfoRspMsg infoRspMsg = memberInfoService.saveMemberInfo(infoReqMsg);
		log.info("会员注册webService返回信息:"+infoRspMsg.getRetShow());
		if(infoRspMsg.getRetCode().equals("0000")){
			model.setViewName("/pages/memberInfo/m_register_3");
			model.addObject("memberInfos", memberInfos);
			return model;
		}
		log.error("注册会员信息失败");
		model.setViewName("/pages/memberInfo/m_fail");
		return model;
		
	}
	/**
	 * 跳转修改验证身份
	 * @return
	 */
	@RequestMapping(value="toUpdateInfo")
	public ModelAndView toUpdateInfo(String memberId,String opt){
		log.info("开始绑定手机号页面......");
		ModelAndView modelAndView = null;
		if(null !=memberId && !"".equals(memberId) && !"".equals(opt)){
			MemberInfoRspMsg infoRspMsg = memberInfoService.queryMemberInfo(memberId);
			if("0000".equals(infoRspMsg.getRetCode())){
				MemberInfoRsp infoRsp = infoRspMsg.getMemberInfoRsp();
				MemberInfos memberInfos = infoRsp.getMemberInfos();
				log.info("查询当前绑定的用户成功......");
				modelAndView = new ModelAndView();
				modelAndView.addObject("memberInfos", memberInfos);
				modelAndView.addObject("opt", opt);
				modelAndView.setViewName("/pages/memberInfo/m_update");
				return modelAndView;
				
			}else{
				log.info("查询当前绑定的用户失败......");
				modelAndView = new ModelAndView();
				modelAndView.setViewName("/pages/memberInfo/m_fail");
				return modelAndView;
			}
		}else{
			log.info("用户还没有登录......");
			modelAndView = new ModelAndView();
			modelAndView.setViewName("/pages/login");
			return modelAndView;
		}
	}
	/**
	 * 跳转修改信息
	 * @return
	 */
	@RequestMapping(value="updateInfo")
	public ModelAndView toUpdateInfo(MemberInfos memberInfos,String opt){
		ModelAndView modelAndView = new ModelAndView();
		if(null == memberInfos && "".equals(memberInfos)){
			modelAndView.setViewName("/pages/m_accountInfo");
			return modelAndView;
		}
		if(null != opt && !"".equals(opt)){
			if("xgmm".equals(opt)){
				//跳转密码修改
				modelAndView = new ModelAndView();
				modelAndView.addObject("memberInfos", memberInfos);
				modelAndView.setViewName("/pages/memberInfo/m_updatePwd");
				return modelAndView;
			}
			if("yxbd".equals(opt)){
				//跳转邮箱验证
				modelAndView = new ModelAndView();
				modelAndView.addObject("memberInfos", memberInfos);
				modelAndView.setViewName("/pages/memberInfo/m_updatePwd_2");
				return modelAndView;
			}
			if("sjbd".equals(opt)){
				//跳转绑定手机
				modelAndView = new ModelAndView();
				modelAndView.addObject("memberInfos", memberInfos);
				modelAndView.setViewName("/pages/memberInfo/m_updateTel");
				return modelAndView;
			}
			if("zfmm".equals(opt)){
				//跳转支付密码
				modelAndView = new ModelAndView();
				modelAndView.addObject("memberInfos", memberInfos);
				modelAndView.setViewName("/pages/memberInfo/m_updatePay");
				return modelAndView;
			}
			if("abwt".equals(opt)){
				//跳转安保问题
				modelAndView = new ModelAndView();
				modelAndView.addObject("memberInfos", memberInfos);
				modelAndView.setViewName("/pages/memberInfo/m_updateAb");
				return modelAndView;
			}
		}
		modelAndView.setViewName("/pages/login");
		return modelAndView;
	}
	/**
	 * 保存修改信息
	 * @return
	 */
	@RequestMapping(value="saveUpdatInfo")
	public ModelAndView saveUpdatInfo(MemberInfos memberInfos){
		ModelAndView mav= new ModelAndView();;
		if(null != memberInfos && !"".equals(memberInfos)){
			MemberInfoReqMsg infoReqMsg = new MemberInfoReqMsg();
			MemberInfoReq infoReq = new MemberInfoReq();
			infoReq.setMemberInfos(memberInfos);
			infoReqMsg.setMemberInfoReq(infoReq);
			MemberInfoRspMsg infoRspMsg= memberInfoService.updateMemberInfo(infoReqMsg);
			if("0000".equals(infoRspMsg.getRetCode())){
				mav = new ModelAndView();
				mav.setViewName("/pages/memberInfo/m_updateSuccess");
				return mav;
			}
		}
		mav.setViewName("/pages/memberInfo/m_accountInfo");
		return mav;
	}
	
	
}
