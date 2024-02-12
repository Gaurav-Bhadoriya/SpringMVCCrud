package com.student.service;

import java.util.List;

import com.student.model.Student;

public interface StudentService {

	public List<Student> getAllStudent();

	public void addStudent(Student student);

	public void deleteStudent(Integer studentId);

	public void updateStudent(Student student);

	public Student getStudentById(int studentId);

}
