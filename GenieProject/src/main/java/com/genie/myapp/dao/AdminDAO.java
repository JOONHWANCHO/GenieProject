package com.genie.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.genie.myapp.vo.AdminVO;
import com.genie.myapp.vo.UserVO;
//추상클래스 
@Mapper
@Repository
public interface AdminDAO {
	//글목록
	public List<AdminVO> adminCategoryTag(AdminVO VO);

	public List<AdminVO> adminTag(AdminVO VO);
	
	// admember 내 유저정보 리스트
	public List<UserVO> userAllSelect();
	
	// admemberPop 내 유저정보 뷰
	public UserVO getadmember(String user_id);
}
