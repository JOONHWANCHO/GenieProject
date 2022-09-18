package com.genie.myapp.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class UserVO {

    private String genie_num;
    private String genie_id;
	private String genie_pwd;
    private String genie_pwd2;
    private String member_type;
    
  	private String user_num;
    private String user_name;
    
	private String user_tel;
	private String user_phone_num1;
	private String user_phone_num2;
	private String user_phone_num3;

	private String user_email;
	private String user_zipcode;
	private String user_addr;
	private String user_detailaddr;
    private char user_gender;
	
    private String sign_in_date;
    private String payment_method;



    @Override
    public String toString() {
        return "UserVO [genie_id=" + genie_id + ", genie_num=" + genie_num + ", genie_pwd=" + genie_pwd
                + ", genie_pwd2=" + genie_pwd2 + ", member_type=" + member_type + ", payment_method=" + payment_method
                + ", sign_in_date=" + sign_in_date + ", user_addr=" + user_addr + ", user_detailaddr=" + user_detailaddr
                + ", user_email=" + user_email + ", user_gender=" + user_gender + ", user_name=" + user_name
                + ", user_num=" + user_num + ", user_phone_num1=" + user_phone_num1 + ", user_phone_num2="
                + user_phone_num2 + ", user_phone_num3=" + user_phone_num3 + ", user_tel=" + user_tel
                + ", user_zipcode=" + user_zipcode + "]";
    }
    
    public String getUser_tel() {
        return user_phone_num1 + "-"+user_phone_num2+"-"+user_phone_num3;
    }
    public void setUser_tel(String user_tel) {
        this.user_tel = user_tel;
        String telSplit[] = user_tel.split("-");
		user_phone_num1 = telSplit[0];
		user_phone_num2 = telSplit[1];
		user_phone_num3 = telSplit[2];
    }
    public String getUser_phone_num1() {
        return user_phone_num1;
    }
    public void setUser_phone_num1(String user_phone_num1) {
        this.user_phone_num1 = user_phone_num1;
    }
    public String getUser_phone_num2() {
        return user_phone_num2;
    }
    public void setUser_phone_num2(String user_phone_num2) {
        this.user_phone_num2 = user_phone_num2;
    }
    public String getUser_phone_num3() {
        return user_phone_num3;
    }
    public void setUser_phone_num3(String user_phone_num3) {
        this.user_phone_num3 = user_phone_num3;
    }
}

