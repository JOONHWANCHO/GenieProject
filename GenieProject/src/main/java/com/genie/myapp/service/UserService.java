package com.genie.myapp.service;

import java.util.List;

import com.genie.myapp.vo.UserVO;


public interface UserService {

    // 회원가입
	public int UserWrite(UserVO vo);
    //아이디 중복검사
	public int idCheck(String user__id);
	// 로그인
	public UserVO loginOk(UserVO vo);
	//회원 선택: 로그인 한 회원
	public UserVO getUser(String user_id);
	//회원 정보 수정: DB 업데이트
	public int UserEditOk(UserVO vo);
	//비밀번호 변경
  	public int PwdEditOk(UserVO vo);
	//아이디 찾기
	public List<String> FindId(String email);
}
