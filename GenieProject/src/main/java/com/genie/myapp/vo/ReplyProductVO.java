package com.genie.myapp.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReplyProductVO {
    private String genie_id;
    private int reply_no;
    private int product_id;
    private String comment;
    private String writedate;
}