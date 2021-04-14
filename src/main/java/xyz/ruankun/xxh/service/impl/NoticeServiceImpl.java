package xyz.ruankun.xxh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.ruankun.xxh.dao.NoticeDao;
import xyz.ruankun.xxh.entity.Notice;
import xyz.ruankun.xxh.service.NoticeService;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	NoticeDao noticeDao;
	
	@Override
	public List<Notice> getAllNotices() {
		List<Notice> notices = noticeDao.selectAll();
		return notices;
	}

	@Override
	public Notice getById(Integer id) {
		Notice notice = noticeDao.selectOneById(id);
		return notice;
	}

}
