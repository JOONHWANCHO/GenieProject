package com.genie.myapp.service;

import javax.inject.Inject;

import com.genie.myapp.dao.UserDAO;
import com.genie.myapp.vo.UserVO;

public class UserServiceImpl implements UserService{

    @Inject
    UserDAO dao;

    @Override
    public int idCheck(String user_id) {
        return dao.idCheck(user_id);
    }

    @Override
    public int userWrite(UserVO vo) {
        return dao.userWrite(vo);
    }

    @Override
    public UserVO loginOk(UserVO vo) {
        return dao.loginOk(vo);
    }

    @Override
    public UserVO getUser(String user_id) {
        return dao.getUser(user_id);
    }

    @Override
    public int userEditOk(UserVO vo) {
        return dao.userEditOk(vo);
    }
}
 