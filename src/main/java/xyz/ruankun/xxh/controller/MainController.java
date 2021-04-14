package xyz.ruankun.xxh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import xyz.ruankun.xxh.entity.Notice;
import xyz.ruankun.xxh.service.NoticeService;

@Controller
public class MainController {
	
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping("/index")
	public ModelAndView index() {
		ModelAndView mdv = new ModelAndView();
		//需要在这里拿到主页需要的数据,那就是嘿嘿,新闻列表
		List<Notice> notices = noticeService.getAllNotices();
		if(notices.size() > 8) {
			notices = notices.subList(0, 8);
		}
		mdv.addObject("notices", notices);
		mdv.setViewName("index");
		return mdv;
	}
	
	@RequestMapping("/about")
	public ModelAndView about() {
		ModelAndView mdv = new ModelAndView();
		//需要在这里拿到主页需要的数据,那就是嘿嘿,新闻列表
		mdv.setViewName("about");
		return mdv;
	}
	
	@RequestMapping("/brand_join")
	public ModelAndView brand_join() {
		ModelAndView mdv = new ModelAndView();
		//需要在这里拿到主页需要的数据,那就是嘿嘿,新闻列表
		mdv.setViewName("brand_join");
		return mdv;
	}
	
	@RequestMapping("/college_stall")
	public ModelAndView college_stall() {
		ModelAndView mdv = new ModelAndView();
		//需要在这里拿到主页需要的数据,那就是嘿嘿,新闻列表
		mdv.setViewName("college_stall");
		return mdv;
	}

	@RequestMapping("/brand_show")
	public ModelAndView brand_show() {
		ModelAndView mdv = new ModelAndView();
		//需要在这里拿到主页需要的数据,那就是嘿嘿,新闻列表
		mdv.setViewName("brand_show");
		return mdv;
	}
	@RequestMapping("/notice")
	public ModelAndView notice() {
		ModelAndView mdv = new ModelAndView();
		//需要在这里拿到主页需要的数据,那就是嘿嘿,新闻列表
		mdv.setViewName("noticelist");
		return mdv;
	}
	@RequestMapping("/notice/{id}")
	public ModelAndView noticeDetail(@PathVariable("id") Integer id) {
		ModelAndView mdv = new ModelAndView();
		//需要在这里拿到主页需要的数据,那就是嘿嘿,新闻列表
		mdv.setViewName("notice");
		Notice notice = noticeService.getById(id);
		mdv.addObject("notice", notice);
		return mdv;
	}
}
