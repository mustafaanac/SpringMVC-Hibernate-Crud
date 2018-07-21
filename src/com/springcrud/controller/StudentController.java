package com.springcrud.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.springcrud.entity.Student;
import com.springcrud.service.StrudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	private StrudentService studentService ;
	
	//for space characters 
	@InitBinder
	public void InitBinder(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	@RequestMapping("/list")
	public String ListStudent(Model theModel) {
	
		List<Student> theStudent = studentService.getStudent();
		theModel.addAttribute("students", theStudent);
		
		return "list-student";
				
	}
	
	@GetMapping("/showStudentForm")
	public String showStudentForm(Model theModel) {
		
		Student theStudent = new Student();
		
		theModel.addAttribute("student",theStudent);
		
		return "student-form";
	}
	
	@PostMapping("/saveStudent")
	public String saveStudent(@Valid @ModelAttribute("student") Student theStudent, BindingResult theBindingResult) {
		
		if(theBindingResult.hasErrors()) {
			return "student-form";
		}
		
		studentService.saveStuden(theStudent);
		
		return "redirect:/student/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate (@RequestParam("studentID")int theId, Model theModel) {
		
		Student theStudent = studentService.getStudent(theId);
		
		theModel.addAttribute(theStudent);
		
		
		return "student-form";
		
	}
	
	
	@GetMapping("/deleteStudent")
	public String deleteStudent (@RequestParam("studentID")int theId) {
		
		
		
		studentService.deleteStudent(theId);
		
		
		return "redirect:/student/list";
		
	}
	

}
