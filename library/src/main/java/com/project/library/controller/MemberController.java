package com.project.library.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.library.service.MemberService;
import com.project.library.vo.MemberVO;

@Controller 
public class MemberController {
	
	@Inject 
	private MemberService memberService;
	
	// 회원목록
	@RequestMapping("member/list")
	public String memberList(Model model) {
		List<MemberVO> list = memberService.memberList();
		model.addAttribute("list", list);
		return "member/member_list"; 
	}
		
	// 회원 등록 폼 
	@RequestMapping("member/write")
	public String memberWrite() {
		return "member/member_write";
	}
	
	// 회원 삽입(입력결과)
	@RequestMapping("member/insert")
	public String memberInsert(@ModelAttribute MemberVO vo) {
		memberService.insertMember(vo);
		return "redirect:/login/login";
	}

    // 회원 상세정보 조회
    @RequestMapping("member/view")
    public String memberView(@RequestParam String userId, Model model){
        
        model.addAttribute("dto", memberService.viewMember(userId));
        return "member/member_view";
    }
    
    // 회원 정보 수정 화면
    @RequestMapping("member/modify")
    public String memberModify(@RequestParam String userId, Model model){
        // 회원 정보를 model에 저장
        model.addAttribute("dto", memberService.viewMember(userId));
        return "member/member_modify";
    }
    
    // 회원 정보 수정 처리
    @RequestMapping("member/update")
    public String memberUpdate(@ModelAttribute MemberVO vo, Model model){
        boolean result = memberService.checkPw(vo.getUserId(), vo.getUserPw());
        if(result){ 
            memberService.updateMember(vo);
            model.addAttribute("message", "수정되었습니다");
            model.addAttribute("dto", memberService.viewMember(vo.getUserId()));
            return "member/member_view";
        } else { 
            MemberVO vo2 = memberService.viewMember(vo.getUserId());
            vo.setUserRegdate(vo2.getUserRegdate());
            vo.setUserUpdatedate(vo2.getUserUpdatedate());
            model.addAttribute("dto", vo);
            model.addAttribute("message", "비밀번호 불일치");
            return "member/member_modify";
        }        
    }
    
    // 회원 정보 삭제 처리
    @RequestMapping("member/delete")
    public String memberDelete(@RequestParam String userId, 
    		@RequestParam String userPw, Model model,HttpSession session){
      
        boolean result = memberService.checkPw(userId, userPw);
        if(result){ 
        	session.invalidate();
            memberService.deleteMember(userId);
            return "redirect:/";
        } else { 
            model.addAttribute("message", "비밀번호 불일치");
            model.addAttribute("dto", memberService.viewMember(userId));
            return "member/member_view";
        }
    }
}
