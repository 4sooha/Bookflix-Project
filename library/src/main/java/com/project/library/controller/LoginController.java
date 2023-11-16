package com.project.library.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.project.library.service.LoginService;
import com.project.library.vo.MemberVO;

@Controller
public class LoginController {
	
	//주입
	@Inject
	private LoginService loginService;
	
	//1> 로그인 화면(로그인 폼)
	@RequestMapping("/login/login")
	public String login() {
		return "login/login";
	}
	
	//2> 로그인 체크하는 화면 (로그인 처리)
	@RequestMapping("/login/loginCheck")
	public ModelAndView loginCheck(@ModelAttribute MemberVO vo, HttpSession session) {

		boolean result = loginService.loginCheck(vo, session);
		ModelAndView mav = new ModelAndView(); 
		if(result == true) {
			mav.addObject("msg", "성공");
			mav.setViewName("redirect:/");
		}else {
			mav.addObject("msg", "실패");
			mav.setViewName("/login/login");
		}
		return mav;
	}
	
	//3> 로그 아웃
	@RequestMapping("/login/logout")
	public ModelAndView logout(HttpSession session) {
		loginService.logout(session);
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", "logout");  
		mav.setViewName("redirect:/");
		return mav;
	}
}
