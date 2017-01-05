package com.jiuyi.jyplant.mycollectonInfo.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jiuyi.jyplant.mycollectonInfo.entity.CollectionInfo;
import com.jiuyi.jyplant.mycollectonInfo.service.CollectionInfoService;
import com.jiuyi.utils.PageResults;

@Controller
@RequestMapping(value = "/collectionInfo/")
public class CollectionInfoControl {

	private static final Logger logger = Logger.getLogger(CollectionInfoControl.class);

	@Autowired
	private CollectionInfoService collectionInfoService;

	/**
	 * 分页查询我的收藏
	 * 
	 * @return
	 */
	@RequestMapping(value = "queryCollectionInfo")
	@ResponseBody
	public Map<String,Object> queryCollectionInfo(
			@ModelAttribute("collectionInfo") CollectionInfo collectionInfo, HttpServletRequest request) {
		logger.info("分页查询我的收藏");
		Integer page = request.getParameter("page")==null ? 1:Integer.valueOf(request.getParameter("page"));
		Integer rows =request.getParameter("rows")==null ? 10: Integer.valueOf(request.getParameter("rows"));
		PageResults<CollectionInfo> pageResults =new PageResults<CollectionInfo>(page, rows);
		pageResults = collectionInfoService.queryPageCollectionInfo(
				collectionInfo, pageResults);
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("pageResults", pageResults);
		return map;
	}
}
