package com.genie.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.genie.myapp.dao.AdminDAO;
import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.AdminVO;
import com.genie.myapp.vo.UserVO;

@Service
public class AdminServiceImple implements AdminService {
	@Autowired
	AdminDAO dao;

	@Override
	public List<AdminVO> adminCategoryTag(AdminVO VO) {
		return dao.adminCategoryTag(VO);
	}

	@Override
	public List<AdminVO> adminTag(AdminVO VO) {
		return dao.adminTag(VO);
	}

	public List<UserVO> userAllSelect() {
		return dao.userAllSelect();
	}

	@Override
	public UserVO getadmember(String user_id) {
		return dao.getadmember(user_id);
	}

	@Override
	public int admemberPopEdit(UserVO vo) {
		return dao.admemberPopEdit(vo);
	}

	@Override
	public int admemberDel(String genie_id) {
		return dao.admemberDel(genie_id);
	}

	@Override
	public UserVO getadminTag(String product_tag_id) {
		return dao.getadmember(product_tag_id);
	}

	@Override
	public int adminTagPopEdit(AdminVO vo) {
		return dao.adminTagPopEdit(vo);
	}

	@Override
	public int adminTagDel(String product_tag_id) {
		return dao.admemberDel(product_tag_id);
	}

}
