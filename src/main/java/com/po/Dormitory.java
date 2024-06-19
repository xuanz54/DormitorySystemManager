package com.po;

import java.io.Serializable;
import java.util.List;

public class Dormitory implements Serializable {
    private static final long serialVersionUID = 1L; //将字节流重新转换为对象（反序列化），确保序列化类和反序列化类是兼容的
    private  Integer d_id; //宿舍信息ID
    private  Integer s_dormitoryid; // 宿舍编号
    private  String  d_dormbuilding; //
    private  String  d_bedtotal;
    private  String  d_bed;
    private  String  a_name;

    private List<Student> students;

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public Integer getD_id() {
        return d_id;
    }

    public void setD_id(Integer d_id) {
        this.d_id = d_id;
    }

    public Integer getS_dormitoryid() {
        return s_dormitoryid;
    }

    public void setS_dormitoryid(Integer s_dormitoryid) {
        this.s_dormitoryid = s_dormitoryid;
    }

    public String getD_dormbuilding() {return d_dormbuilding;}

    public void setD_dormbuilding(String d_dormbuilding) {this.d_dormbuilding = d_dormbuilding;}

    public String getD_bedtotal() {
        return d_bedtotal;
    }

    public void setD_bedtotal(String d_bedtotal) {
        this.d_bedtotal = d_bedtotal;
    }

    public String getD_bed() {
        return d_bed;
    }

    public void setD_bed(String d_bed) {
        this.d_bed = d_bed;
    }

    public String getA_name() {
        return a_name;
    }

    public void setA_name(String a_name) {
        this.a_name = a_name;
    }

    public List<Student> getStudents() {
        return students;
    }

    public void setStudents(List<Student> students) {
        this.students = students;
    }
}
