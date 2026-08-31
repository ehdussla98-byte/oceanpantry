package com.springboot.pilotproject.dto;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class productDTO {
	private int pno;
	private String pcategory;
	private String pname;
	private MultipartFile pupload;
	private String pfilename;
	private int pprice;
	private String pdescription;
	private String porigin;
	private String pweight;
	private String pstorage;
	private int pstock;
	private Date pdate;
	private int mno;
}
