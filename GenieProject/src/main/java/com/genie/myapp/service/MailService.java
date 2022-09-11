package com.genie.myapp.service;

import java.util.List;

public interface MailService {

    void sendUserId(String user_email, List<String> user_names);
    public boolean emailCheck(String user_name, String user_email);

}
