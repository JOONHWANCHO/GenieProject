package com.genie.myapp.service;


import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.genie.myapp.dao.UserDAO;
import com.genie.myapp.vo.AccountVO;
import com.genie.myapp.vo.DeliveryVO;
import com.genie.myapp.vo.OrderVO;
import com.genie.myapp.vo.ProductVO;
import com.genie.myapp.vo.UserVO;

@Service
public class UserServiceImpl implements UserService, UserDetailsService{

    @Autowired
    UserDAO dao;

    @Autowired
    PasswordEncoder passwordEncoder;

    private UserDAO userDAO;

    @Override
    public int idCheck(String genie_id) {
        return dao.idCheck(genie_id);
    }

    @Override
    public int UserWrite(UserVO vo) {
        String enPw=passwordEncoder.encode(vo.getGenie_pwd());
        vo.setGenie_pwd(enPw);
        return dao.UserWrite(vo);
    }

    @Override
    public UserVO loginOk(UserVO vo) {
        return dao.loginOk(vo);
    }

    @Override
    public UserVO getUser(String genie_id) {
        return dao.getUser(genie_id);
    }

    @Override
    public int UserEditOk(UserVO vo) {
        return dao.UserEditOk(vo);
    }

    @Override
    public int PwdEditOk(UserVO vo) {
        return dao.PwdEditOk(vo);
    }

    @Override
    public int addDelivery(UserVO vo) {
        return dao.addDelivery(vo);
    }
    
    @Override
    public int Delivery(UserVO vo) {
        return dao.Delivery(vo);
    } 
    @Override
    public int AccountWrite(AccountVO avo) {
       return dao.AccountWrite(avo);
    }

    @Override
    public List<DeliveryVO> getDeliveryList(String genie_id) {
        return dao.getDeliveryList(genie_id);
    }

    @Override
    public int delDelivery(int address_num, String genie_id) {
        return dao.delDelivery(address_num, genie_id);
    }

    @Override
    public List<OrderVO> getOrder(String genie_id) {
        return dao.getOrder(genie_id);
    }

    @Override
    public List<ProductVO> getLikeList(String genie_id) {
        return dao.getLikeList(genie_id);
    }

    @Override
    public UserDetails loadUserByUsername(String ROLE) throws UsernameNotFoundException {
        Optional<AccountVO> userEntityWrapper = userDAO.findByRole(ROLE);
        AccountVO userEntity = userEntityWrapper.get();
        
        List<GrantedAuthority> auth = new ArrayList<GrantedAuthority>();
    
        auth.add(new SimpleGrantedAuthority("ROLE_USER"));
            
        return (UserDetails) auth;
        
    }

    

       
}
 