package com.springboot.pilotproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springboot.pilotproject.dao.memberDAO;
import com.springboot.pilotproject.dao.productDAO;
import com.springboot.pilotproject.dto.memberDTO;
import com.springboot.pilotproject.dto.productDTO;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class memberController {
	@Autowired
	private memberDAO dao;
	
	@Autowired
	private productDAO pDao;

	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@RequestMapping("/")
	public String root() {
		return "redirect:main";
	}
	
	@RequestMapping("/main")
	public String main(Model model) {
		model.addAttribute("list", pDao.productList());
		
		return "main";
	}
	
	@RequestMapping("/popup")
	public String popup() {
		return "popup";
	}
	
	@RequestMapping("/member/writeForm")
	public String writeForm() {
		return "member/writeForm";
	}
	
	@RequestMapping("/member/jusoPopup")
	public String jusoPopup() {
		return "member/jusoPopup";
	}
	
	@RequestMapping("/write")
	public String write(HttpServletRequest request, memberDTO dto) {
		String mtel1 = request.getParameter("mtel1");
		String mtel2 = request.getParameter("mtel2");
		String mtel3 = request.getParameter("mtel3");
		String maddr1 = request.getParameter("maddr1");
		String maddr2 = request.getParameter("maddr2");
		
		// 연락처 저장
		dto.setMtel(mtel1 + "-" + mtel2 + "-" + mtel3);
		
		// 주소 저장
		dto.setMaddr(maddr1 + "," + maddr2);
		
		// 비밀번호 암호화 저장
		dto.setMpasswd(passwordEncoder.encode(dto.getMpasswd()));
		
		dao.memberWrite(dto);
		
		return "redirect:/main";
	}
	
	@RequestMapping("/loginForm")
	public String loginForm() {
		return "loginForm";
	}
	
	@RequestMapping("/loginError")
	public String loginError() {
		return "loginError";
	}
	
	@RequestMapping("/admin/memberList")
	public String memberList(Model model) {
		model.addAttribute("list", dao.memberList());
		
		return "admin/memberList";
	}
	
	@RequestMapping("/admin/memberView")
	public String memberView(HttpServletRequest request, Model model) {
		int mno = Integer.parseInt(request.getParameter("mno"));
		model.addAttribute("view", dao.memberView(mno));
		
		return "admin/memberView";
	}
	
	// 비밀번화 확인폼 (수정/탈퇴 공용)
		@RequestMapping("/member/passwordCheckForm")
		public String passwordCheckForm(HttpServletRequest request, Model model) {
			String mode = request.getParameter("mode"); // update, delete
			model.addAttribute("mode", mode);
			
			return "member/passwordCheckForm";
		}
	
	// 비밀번호 확인 처리
		@RequestMapping("/member/passwordCheck")
		public String passwordCheck(Authentication authentication, HttpServletRequest request, Model model) {
			String mode = request.getParameter("mode"); // update, delete
			String mpasswd = request.getParameter("mpasswd");
			
			String mid = authentication.getName();
			memberDTO dto = dao.findById(mid);
			
			if(dto != null && passwordEncoder.matches(mpasswd, dto.getMpasswd())) {
				if("update".equals(mode)) {
					model.addAttribute("update", dto);
					return "member/updateForm";
				}else if("delete".equals(mode)){
					dao.memberDelete(mid);
					return "redirect:/logout";
				}
			}
			
			model.addAttribute("msg", "비밀번호가 일치하지 않습니다");
			model.addAttribute("mode", mode);
			
			return "member/passwordCheckForm";
		}
		
		@RequestMapping("/update")
		public String update(HttpServletRequest request, memberDTO dto) {
			String mtel1 = request.getParameter("mtel1");
			String mtel2 = request.getParameter("mtel2");
			String mtel3 = request.getParameter("mtel3");
			String maddr1 = request.getParameter("maddr1");
			String maddr2 = request.getParameter("maddr2");
			
			// 연락처 저장
			dto.setMtel(mtel1 + "-" + mtel2 + "-" + mtel3);
			
			// 주소 저장
			dto.setMaddr(maddr1 + "," + maddr2);
			
			// 비밀번호 암호화 저장
			dto.setMpasswd(passwordEncoder.encode(dto.getMpasswd()));
			
			dao.memberUpdate(dto);
			
			return "redirect:/main";
		}
}
