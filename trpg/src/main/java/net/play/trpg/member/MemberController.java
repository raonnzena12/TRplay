package net.play.trpg.member;

import java.util.HashMap;

import javax.servlet.http.HttpSession;
import javax.websocket.server.PathParam;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import net.play.trpg.member.service.MemberService;
import net.play.trpg.member.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memService;
	
	@RequestMapping("/login.tr")
	public String memberLoginView() throws Exception {
		
		return "member/memberLogin";
	}
	
	@ResponseBody
	@RequestMapping(value="/memberLogin.tr", method=RequestMethod.POST)
	public String memberLogin(Member member, HttpSession session) throws Exception {
		HashMap<String, Object> result = new HashMap<String, Object>();
		result = memService.memberLogin(member, result);
		
		if ( result.get("result").equals("loginSuccess") ) {
			session.setAttribute("loginUser", result.get("loginUser"));
		}
		
		return new Gson().toJson(result);
	}
	
	@ResponseBody
	@RequestMapping("/memberIdCheck.tr")
	public String memberIdCheck(Member member) throws Exception {
		
		int result = memService.memberIdCheck(member);
		return result+"";
	}
	
	@RequestMapping("/{userId}/userPage.tr")
	public String memberPage(@PathParam("userId")String userId, HttpSession session, Model model) throws Exception {
		Object loginUser = session.getAttribute("loginUser");
		if ( loginUser == null ) return "redirect:/login.tr";
		if ( ((Member)loginUser).getMemId().equals(userId) ) {
			model.addAttribute("myPage", true);
		} 
		Member uInfo = new Member();
		uInfo.setMemId(userId);
		model.addAttribute("userInfo", memService.selectMemberInfo(uInfo));
		
		return "member/memberMypageHeader";
	}
	
	@RequestMapping("/{userId}/editProfile.tr")
	public String memberProfileEditView(@PathParam("userId") String userId, HttpSession session, Model model) throws Exception {
		Object loginUser = session.getAttribute("loginUser");
		if ( loginUser == null ) return "redirect:/login.tr";
		if ( ((Member)loginUser).getMemId().equals(userId) ) {
			model.addAttribute("myPage", "myPage");
		} 
		Member uInfo = new Member();
		uInfo.setMemId(userId);
		model.addAttribute("userInfo", memService.selectMemberInfo(uInfo));
		return "member/memberEditProfile";
	}

}
