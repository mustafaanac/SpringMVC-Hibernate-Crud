package com.springcrud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.springcrud.dao.StudentDAO;
import com.springcrud.entity.Student;

@Service
public class StudentServiceImpl implements StrudentService {

	@Autowired
	private StudentDAO studentDAO;
	
	@Transactional
	@Override
	public List<Student> getStudent() {
		return studentDAO.getStudent();
	}

	@Override
	@Transactional
	public void saveStuden(Student theStudent) {
		
		studentDAO.saveStudent(theStudent);
		
	}

	@Transactional
	@Override
	public Student getStudent(int theId) {
		return studentDAO.getStudent(theId);
	}

	@Override
	@Transactional
	public void deleteStudent(int theId) {
		
		studentDAO.deleteStudent(theId);
		
	}

}
