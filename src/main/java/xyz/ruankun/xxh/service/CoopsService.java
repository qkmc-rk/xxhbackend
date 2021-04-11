package xyz.ruankun.xxh.service;

public interface CoopsService {
	/**
	 * 保存一个合作伙伴信息
	 * @param name 合作伙伴的名字
	 * @param phone 合作伙伴的电话
	 * @param email 合作伙伴的邮箱
	 * @param content 合作伙伴的主要内容
	 * @return 是否保存成功
	 */
	Boolean saveOneCoops(String name, String phone, String email, String content);

}
