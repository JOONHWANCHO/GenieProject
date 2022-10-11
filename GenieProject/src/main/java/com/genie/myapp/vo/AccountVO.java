package com.genie.myapp.vo;

public class AccountVO {
    private String genie_id;
	private String genie_pwd;
    private String ROLE;

    @Override
    public String toString() {
        return "AccountVO [genie_id=" + genie_id + ", genie_pwd=" + genie_pwd + ", ROLE=" + ROLE + "]";
    }
    
    public String getGenie_id() {
        return genie_id;
    }
    public void setGenie_id(String genie_id) {
        this.genie_id = genie_id;
    }
    public String getGenie_pwd() {
        return genie_pwd;
    }
    public void setGenie_pwd(String genie_pwd) {
        this.genie_pwd = genie_pwd;
    }
    public String getROLE() {
        return ROLE;
    }
    public void setROLE(String ROLE) {
        this.ROLE = ROLE;
    }
    
}
