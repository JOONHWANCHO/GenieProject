package com.genie.myapp.vo;

public class Tag_nameVO{
    private String genie_who;
    private String genie_day;
    private String genie_old;
    private String gender;


    @Override
    public String toString() {
        return "Tag_nameVO [gender=" + gender + ", genie_day=" + genie_day + ", genie_old="
                + genie_old + ", genie_who=" + genie_who + "]";
    }
    
    public String getGenie_who() {
        return genie_who;
    }
    public void setGenie_who(String genie_who) {
        this.genie_who = genie_who;
    }
    public String getGenie_day() {
        return genie_day;
    }
    public void setGenie_day(String genie_day) {
        this.genie_day = genie_day;
    }
 
    public String getGenie_old() {
        return genie_old;
    }
    public void setGenie_old(String genie_old) {
        this.genie_old = genie_old;
    }
    public String getGender() {
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    
    
}