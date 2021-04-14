package xyz.ruankun.xxh.dao;

import java.util.List;

import xyz.ruankun.xxh.entity.Notice;

public interface NoticeDao {
	
	List<Notice> selectAll();
	
	Notice selectOneById(Integer id);

}
