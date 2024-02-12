package com.student.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.dao.StudentDAO;
import com.student.model.Student;

@Service
public class StudentServiceImpl implements StudentService{
	
	private StudentDAO studentDAO;
	
	@Autowired
	public void setStudentDAO(StudentDAO studentDAO) {
		this.studentDAO = studentDAO;
	}
	
	@Override
	public List<Student> getAllStudent() {
		return studentDAO.getAllStudent();
	}

	public StudentDAO getStudentDAO() {
		return studentDAO;
	}

	@Override	
	public void addStudent(Student student) {
		studentDAO.addStudent(student);
	}

	@Override
	public void deleteStudent(Integer studentId) {
		studentDAO.deleteStudent(studentId);
	}

	@Override
	public Student getStudentById(int studentId) {
		return studentDAO.getStudentById(studentId);
	}

	@Override
	public void updateStudent(Student student) {
		studentDAO.updateStudent(student);
	}
}
