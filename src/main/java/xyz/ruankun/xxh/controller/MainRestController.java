package xyz.ruankun.xxh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import xyz.ruankun.xxh.service.CoopsService;
import xyz.ruankun.xxh.vo.ResponseVO;

@RestController
public class MainRestController {

	@Autowired
	CoopsService coopsService;
	
	//收集用户信息
	@SuppressWarnings("rawtypes")
	@ResponseBody
	@RequestMapping(name = "/coops", method = RequestMethod.POST)
	public ResponseVO openCoop(String name, String phone, String email, String content) {
		if(coopsService.saveOneCoops(name, phone, email, content)) {
			return ResponseVO.success();
		}
		return ResponseVO.fail("failed");
	}
	
	//收集匿名用户email
	public ResponseVO collectEmail(String email) {
		
		return null;
	}
}
