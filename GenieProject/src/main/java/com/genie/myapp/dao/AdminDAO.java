package com.genie.myapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.genie.myapp.vo.AdminVO;
//추상클래스 
@Mapper
@Repository
public interface AdminDAO {
	//카테고리리스트
	public List<AdminVO> adminCategoryTag(AdminVO VO);
	//태그리스트
	public List<AdminVO> adminTag(AdminVO VO);
	//태그수정
	public int modify(AdminVO adminVO);
}
