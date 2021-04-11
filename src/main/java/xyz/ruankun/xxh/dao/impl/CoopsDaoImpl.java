package xyz.ruankun.xxh.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import xyz.ruankun.xxh.dao.CoopsDao;
import xyz.ruankun.xxh.entity.Coops;

@Repository
public class CoopsDaoImpl implements CoopsDao {
	
	@Autowired
	JdbcTemplate jdbcTemplate;

	@Override
	public Integer insertCoops(Coops coop) {
		String sql = "insert into coops(name, phone, email, content)values(?,?,?,?)";
		Integer rs = jdbcTemplate.update(sql, coop.getName(), coop.getPhone(), coop.getEmail(), coop.getContent());
		return rs;
	}

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
}
