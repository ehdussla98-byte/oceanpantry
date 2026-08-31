package com.springboot.pilotproject.controller;

import java.io.File;
import java.io.IOException;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.springboot.pilotproject.dao.memberDAO;
import com.springboot.pilotproject.dao.productDAO;
import com.springboot.pilotproject.dto.memberDTO;
import com.springboot.pilotproject.dto.productDTO;

@Controller
public class productController {
	@Autowired
	private productDAO dao;
	
	@Autowired
	private memberDAO mDao;
	
	@RequestMapping("/product/productWriteForm")
	public String productWriteForm(Model model) {
		return "product/productWriteForm";
	}
	
	@RequestMapping("/product/productWrite")
	public String productWrite(@RequestParam("pupload") MultipartFile pupload, Principal principal, productDTO dto) throws Exception {
		// 로그인한 관리자 아이디
		String mid = principal.getName();
		
		// 관리자 정보 조회
		memberDTO mDto = mDao.findById(mid);
		
		// 상품 등록자 번호 자동 세팅
		dto.setMno(mDto.getMno());
		
		if(!pupload.isEmpty()) {
			String pfilname = pupload.getOriginalFilename();
			pupload.transferTo(new File("C:\\SPRINGBOOT\\Pilotproject\\src\\main\\resources\\static\\images\\"+pfilname));
			dto.setPfilename(pfilname);
		}
			
		dao.productWrite(dto);
		
		return "redirect:/main";
	}
	
	@RequestMapping("/product/productView")
	public String productView(@RequestParam("pno") int pno, Model model) {
		model.addAttribute("view", dao.productView(pno));
		
		return "product/productView";
	}
	
	@RequestMapping("/product/productDelete")
	public String productDelete(@RequestParam("pno") int pno) {
		dao.productDelete(pno);
		
		return "redirect:/main";
	}
	
	@RequestMapping("/product/productUpdateForm")
	public String productUpdateForm(@RequestParam("pno") int pno, Model model) {
		model.addAttribute("update", dao.productView(pno));
		
		return "product/productUpdateForm";
	}
	
	@RequestMapping("/product/productUpdate")
	public String productUpdate(@RequestParam("pupload") MultipartFile pupload, productDTO dto) throws IOException {
		if(!pupload.isEmpty()) {
			String pfilname = pupload.getOriginalFilename();
			pupload.transferTo(new File("C:\\SPRINGBOOT\\Pilotproject\\src\\main\\resources\\static\\images\\"+pfilname));
			dto.setPfilename(pfilname);
		}
		
		dao.productUpdate(dto);
		
		return "redirect:/main";
	}
	
}
