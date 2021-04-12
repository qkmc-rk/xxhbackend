package xyz.ruankun.xxh.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.ruankun.xxh.dao.SubscriptionDao;
import xyz.ruankun.xxh.entity.Subscription;
import xyz.ruankun.xxh.service.SubscriptionService;

@Service("subscriptionService")
public class SubscriptionServiceImpl implements SubscriptionService {
	
	@Autowired
	SubscriptionDao subscriptionDao;

	/**
	 * 保存一个订阅者的email
	 */
	@Override
	public Integer saveSubscription(String email) {
		Subscription subscription = new Subscription();
		subscription.setEmail(email);
		Integer rs = subscriptionDao.insertSubscription(subscription);
		return rs;
	}
}
