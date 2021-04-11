package xyz.ruankun.xxh.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import xyz.ruankun.xxh.dao.CoopsDao;
import xyz.ruankun.xxh.entity.Coops;
import xyz.ruankun.xxh.service.CoopsService;

@Service("coopsService")
public class CoopsServiceImpl implements CoopsService {

	@Autowired
	CoopsDao coopsDao;
	@Override
	public Boolean saveOneCoops(String name, String phone, String email, String content) {
		Coops coop = new Coops();
		coop.setName(name);
		coop.setPhone(phone);
		coop.setEmail(email);
		coop.setContent(content);
		Integer rs = coopsDao.insertCoops(coop);
		if(rs > 0) {
			return true;
		}
		return false;
	}

}
