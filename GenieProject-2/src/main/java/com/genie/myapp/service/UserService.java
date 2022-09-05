package com.genie.myapp.service;

import com.genie.myapp.vo.UserVO;

public interface UserService {
    
    //아이디 중복검사
	public int idCheck(String userid);
	// 회원가입
	public int memberWrite(UserVO vo);
	// 로그인
	public UserVO loginOk(UserVO vo);
	//회원 선택: 로그인 한 회원
	public UserVO getMember(String userid);
	//회원 정보 수정: DB 업데이트
	public int memberEditOk(UserVO vo);
}
