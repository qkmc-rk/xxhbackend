package xyz.ruankun.xxh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import xyz.ruankun.xxh.service.CoopsService;
import xyz.ruankun.xxh.service.SubscriptionService;
import xyz.ruankun.xxh.vo.ResponseVO;

@RestController
public class MainRestController {

	@Autowired
	CoopsService coopsService;
	@Autowired
	SubscriptionService subscriptionService;
	//收集用户信息
	@PostMapping("coops")
	public ResponseVO<?> collectCoops(String name, String phone, String email, String content) {
		if(coopsService.saveOneCoops(name, phone, email, content)) {
			return ResponseVO.success();
		}
		return ResponseVO.fail("failed");
	}
	
	//收集匿名用户email
	@PostMapping("subscription")
	public ResponseVO<?> collectEmail(String email) {
		if (email == null || email.equals("")) {
			return ResponseVO.fail("email cannot be null");
		}
		Integer rs = subscriptionService.saveSubscription(email);
		if(rs > 0) {
			return ResponseVO.success();
		} else {
			return ResponseVO.fail("save email failed!");
		}
	}
}
