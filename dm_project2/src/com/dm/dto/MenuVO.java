package com.dm.dto;

import java.util.List;

public class MenuVO {
	private String mcode;
	private String mname;
	private String murl;
	private String upcode;
	private List<MenuVO> subMenuList;
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getMurl() {
		return murl;
	}
	public void setMurl(String murl) {
		this.murl = murl;
	}
	public String getUpcode() {
		return upcode;
	}
	public void setUpcode(String upcode) {
		this.upcode = upcode;
	}
	public List<MenuVO> getSubMenuList() {
		return subMenuList;
	}
	public void setSubMenuList(List<MenuVO> subMenuList) {
		this.subMenuList = subMenuList;
	}
	
}
