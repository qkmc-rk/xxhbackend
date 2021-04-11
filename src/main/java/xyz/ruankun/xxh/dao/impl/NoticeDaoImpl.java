package xyz.ruankun.xxh.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import xyz.ruankun.xxh.dao.NoticeDao;
import xyz.ruankun.xxh.entity.Notice;

@Repository
public class NoticeDaoImpl implements NoticeDao {
	
	@Autowired
	private JdbcTemplate JdbcTemplate;

	@Override
	public List<Notice> selectAll() {
		String sql = "select * from notice";
		RowMapper<List<Notice>> rowMapper = new RowMapper<List<Notice>>() {
			@Override
			public List<Notice> mapRow(ResultSet rs, int rowNum) throws SQLException {
				List<Notice> list = new ArrayList<>();
				Notice n = null;
				do {
					n = new Notice();
					n.setId(rs.getInt(1));
					n.setTitle(rs.getString(2));
					n.setContent(rs.getString(3));
					n.setCreate_time(rs.getDate(4));
					n.setModified_time(rs.getDate(5));
					list.add(n);
				}while(rs.next());
				return list;
			}
		};
		List<Notice> notices = JdbcTemplate.queryForObject(sql, rowMapper);
		return notices;
	}

	public JdbcTemplate getJdbcTemplate() {
		return JdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		JdbcTemplate = jdbcTemplate;
	}
}
