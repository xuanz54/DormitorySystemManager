package com.service;

import com.po.PageInfo;
import com.po.Student;

import java.util.List;

/**
 * 用户Service层接口
 */
public interface StudentService {

	//分页查询
	public PageInfo<Student> findPageInfo(String s_name,Integer s_studentid,Integer s_classid,
										  String s_classname, Integer pageIndex, Integer pageSize);

	public int deleteStudent(Integer s_id);   //通过id删除学生信息
	public boolean addStudent(Student student);   //添加学生信息
	public int updateStudent(Student student); //修改学生信息
	public Student findStudentById(Integer s_id);
	public Student findStudentBySid(Integer sid);
	public List<Student> getAll();

}
