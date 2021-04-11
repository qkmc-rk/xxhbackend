package xyz.ruankun.xxh.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import xyz.ruankun.xxh.dao.SubscriptionDao;
import xyz.ruankun.xxh.entity.Subscription;

@Repository
class SubscriptionDaoimpl implements SubscriptionDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public Integer insertSubscription(Subscription subscription) {
		String sql = "insert into subscription(email)values(?)";
		Integer rs = jdbcTemplate.update(sql, subscription.getEmail());
		return rs;
	}

}
