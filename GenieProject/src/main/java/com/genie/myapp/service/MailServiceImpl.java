package com.genie.myapp.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.genie.myapp.dao.UserDAO;

@Service
public class MailServiceImpl implements MailService {
    
    @Autowired
	private JavaMailSender mailSender;
	
	UserDAO dao;
	
	@Override
	public void sendUserId(String user_email, List<String> user_name) {
		SimpleMailMessage simpleMailMessage = new  SimpleMailMessage();
		simpleMailMessage.setTo(user_email);
		simpleMailMessage.setSubject("아이디 찾기");
		
		StringBuffer sb = new StringBuffer();
		sb.append("가입하신 아이디는");
		sb.append(System.lineSeparator());
		
		for(int i=0;i<user_name.size()-1;i++) {
			sb.append(user_name.get(i));
			sb.append(System.lineSeparator());
		}
		sb.append(user_name.get(user_name.size()-1)).append("입니다");
		
		simpleMailMessage.setText(sb.toString());
		
		
		new Thread(new Runnable() {
			public void run() {
				mailSender.send(simpleMailMessage);
			}
		}).start();
	}

	@Override
    public boolean emailCheck(String user_name, String user_email) {
        Map<String, Object> map = new HashMap<>();
        map.put("username", user_name);
        map.put("email", user_email);
        String result = dao.emailCheck(map);
        if("1".equals(result)) {
            return true;
        }
        return false;
	}

}
