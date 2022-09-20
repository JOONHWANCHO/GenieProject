package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.AdminVO;
import com.genie.myapp.vo.UserVO;

public interface AdminService {
	//카테고리리스트
	public List<AdminVO> adminCategoryTag(AdminVO VO);
	//태그리스트
	public Object adminTag(AdminVO VO);
	
	// admember 내 유저정보 리스트
	public List<UserVO> userAllSelect();
		
	// admemberPop 내 유저정보 뷰
	public UserVO getadmember(String user_id);

	// admemberPop 내 유저정보 수정
	public int admemberPopEdit(UserVO vo);
	
	// admember 내 유저정보 삭제
	public int admemberDel(String genie_id);

}
