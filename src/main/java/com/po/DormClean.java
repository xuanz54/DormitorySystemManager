package com.po;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;

public class DormClean {
    private Integer g_id; //宿舍评分ID
    private Integer d_id; //宿舍ID
    private String  d_dormbuilding;
    private Integer d_grade;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8") //表示相对于格林尼治时间增加了 8 小时，即东八区时间
    private Date create_time;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date update_time;

    public Integer getG_id() {
        return g_id;
    }

    public void setG_id(Integer g_id) {
        this.g_id = g_id;
    }

    public Integer getD_id() {
        return d_id;
    }

    public void setD_id(Integer d_id) {
        this.d_id = d_id;
    }

    public String getD_dormbuilding() {
        return d_dormbuilding;
    }

    public void setD_dormbuilding(String d_dormbuilding) {
        this.d_dormbuilding = d_dormbuilding;
    }

    public Integer getD_grade() {
        return d_grade;
    }

    public void setD_grade(Integer d_grade) {
        this.d_grade = d_grade;
    }

    public Date getCreate_time() {
        return create_time;
    }

    public void setCreate_time(Date create_time) {
        this.create_time = create_time;
    }

    public Date getUpdate_time() {
        return update_time;
    }

    public void setUpdate_time(Date update_time) {
        this.update_time = update_time;
    }
}

