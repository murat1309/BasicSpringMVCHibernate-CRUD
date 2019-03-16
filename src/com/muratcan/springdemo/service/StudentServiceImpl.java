package com.muratcan.springdemo.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.muratcan.springdemo.dao.StudentDAO;
import com.muratcan.springdemo.entity.Student;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDao;
	
	@Override
	@Transactional
	public List<Student> getStudents() {
	
		return studentDao.getStudents();
	}

	@Override
	@Transactional
	public void saveStudent(Student student) {
		
		studentDao.saveStudent(student);		
	}

	@Override
	@Transactional
	public Student getStudent(int id) {
		
		return studentDao.getStudent(id);
	}

	@Override
	@Transactional
	public void deleteStudent(int id) {
		
	 studentDao.deleteStudent(id);
		
	}

}
