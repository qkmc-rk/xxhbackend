package xyz.ruankun.xxh.service;

import java.util.List;

import xyz.ruankun.xxh.entity.Notice;

public interface NoticeService {

	List<Notice> getAllNotices();
	
	Notice getById(Integer id);
}
