package com.springcrud.dao;

import java.util.List;

import com.springcrud.entity.Student;

public interface StudentDAO {
	
	public List<Student> getStudent();

	public void saveStudent(Student theStudent);

	public Student getStudent(int theId);

	public void deleteStudent(int theId);
	
	

}
