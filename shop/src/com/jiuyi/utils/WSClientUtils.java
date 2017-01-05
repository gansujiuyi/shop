package com.jiuyi.utils;

import org.apache.cxf.interceptor.LoggingInInterceptor;
import org.apache.cxf.interceptor.LoggingOutInterceptor;
import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;
import org.apache.log4j.Logger;

import com.jiuyi.net.service.IEmallEXChangesService;

/**
 * 
 * @author baizilin
 * 
 */
public class WSClientUtils {

	private static Logger log = Logger.getLogger(WSClientUtils.class);

	public static IEmallEXChangesService service = null;

	private WSClientUtils() {

	}

	/**
	 * 获得EmallEXChangesService对象
	 * 
	 * @return
	 */
	public static IEmallEXChangesService createEmallEXChangesService() {
		try {
			if (service == null) {
				String SuperviseUrl = ConfigManager.getString(
						"emallEXChangesServiceUrl",
						"http://127.0.0.1:8080/emall/webservice/api");
				JaxWsProxyFactoryBean factory = new JaxWsProxyFactoryBean();
				factory.setServiceClass(IEmallEXChangesService.class);
				factory.setAddress(SuperviseUrl);
				factory.getInInterceptors().add(new LoggingInInterceptor()); 
				factory.getOutInterceptors().add(new LoggingOutInterceptor()); 
				service = (IEmallEXChangesService) factory.create();
				return service;
			}
			return service;
		} catch (Exception e) {
			log.error("创建EmallEXChangesService连接失败：" + e.getMessage(), e);
			return null;
		}
	}
	
	
	
	

}
