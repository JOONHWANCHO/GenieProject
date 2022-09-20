package com.genie.myapp.service;

import java.util.List;
import com.genie.myapp.vo.AdminVO;

public interface AdminService {
	//카테고리리스트
	public List<AdminVO> adminCategoryTag(AdminVO VO);
	//태그리스트
	public Object adminTag(AdminVO VO);
	//태그수정
	public int modify(AdminVO adminVO);
}
