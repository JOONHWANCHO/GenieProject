package com.genie.myapp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.genie.myapp.vo.UserVO;

@Mapper
@Repository
public interface UserDAO {

    //아이디 중복검사
	public int idCheck(String user_id);
	// 회원가입
	public int UserWrite(UserVO vo);
	// 로그인
	public UserVO loginOk(UserVO vo);
	//회원 선택: 로그인 한 회원
	public UserVO getUser(String user_id);
	//회원 정보 수정: DB 업데이트
	public int UserEditOk(UserVO vo);
	//아이디 찾기
	public List<String> FindId(String user_email);
	//비밀번호 변경
	public int PwdEditOk(UserVO vo);
	//입력한 이메일이 맞는지 확인
	public boolean emailCheck(String user_name, String user_email);
	//입력한 메일 가져오기
    public String emailCheck(Map<String, Object> map);
}
