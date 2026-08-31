package com.springboot.pilotproject.dto;

import java.util.Date;

import lombok.Data;

@Data
public class memberDTO {
	private int mno;
	private String mid;
	private String mpasswd;
	private String mname;
	private String mtel;
	private String mgender;
	private String maddr;
	private int mzipno;
	private String memail;
	private Date mdate;
	private String mauthority;
}
