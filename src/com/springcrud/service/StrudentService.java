package com.springcrud.service;

import java.util.List;

import com.springcrud.entity.Student;

public interface StrudentService {

	public List<Student> getStudent();

	public void saveStuden(Student theStudent);

	public Student getStudent(int theId);

	public void deleteStudent(int theId);
	
	
	
}
