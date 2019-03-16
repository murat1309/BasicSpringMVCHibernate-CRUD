package com.muratcan.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.muratcan.springdemo.dao.StudentDAO;
import com.muratcan.springdemo.entity.Student;
import com.muratcan.springdemo.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {

	@Autowired
	private StudentService  studentService;
	
	//@RequestMapping(path = "/list", method = RequestMethod.GET)
	@GetMapping("/list")
	public String listStudents(Model model) {
	
		List<Student> students = studentService.getStudents();
		model.addAttribute("students",students);	
		
		return "list-student";
	}
	
	@GetMapping("/showStudentForm")
	public String showStudentForm(Model model) {
			
		Student student = new Student();
		model.addAttribute("student",student);
		
		return "student-form";
	}
	
	@PostMapping("/saveStudent")
	public String saveStudent(@ModelAttribute("student") Student student) {
			
		studentService.saveStudent(student);	
		return "redirect:/student/list";	
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("studentID") int id , Model model) {
		
		Student student = studentService.getStudent(id);
		model.addAttribute(student);
		
		return "student-form";
	}
	
	@GetMapping("/deleteStudent")
	public String deleteStudent(@RequestParam ("studentID") int id, Model model) {
		
		studentService.deleteStudent(id);
		return "redirect:/student/list";
	}
}
