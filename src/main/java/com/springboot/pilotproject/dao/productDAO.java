package com.springboot.pilotproject.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.springboot.pilotproject.dto.productDTO;

@Mapper
public interface productDAO {
	public List<productDTO> productList(); // 상품목록
	public productDTO productView(int pno); // 상품상세보기, 수정폼
	public int productWrite(productDTO dto); // 상품등록
	public int productUpdate(productDTO dto); // 상품정보수정
	public int productDelete(int pno); // 상품삭제
}
