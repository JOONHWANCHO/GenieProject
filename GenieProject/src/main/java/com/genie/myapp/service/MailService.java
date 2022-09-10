package com.genie.myapp.service;

import java.util.List;

public interface MailService {

    void sendUserId(String user_email, List<String> usernames);
    
}
