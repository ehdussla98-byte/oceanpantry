package com.springboot.pilotproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.pilotproject.dto.memberDTO;

@Mapper
public interface memberDAO {
	public List<memberDTO> memberList(); // 회원목록
	public memberDTO memberView(int mno); // 회원정보상세보기, 수정폼
	public int memberWrite(memberDTO dto); // 회원가입
	public int memberUpdate(memberDTO dto); // 회원정보수정
	public int memberDelete(String mid); // 회원탈퇴
	public memberDTO findById(String mid); // 로그인용 조회
}
