package com.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.student.model.Student;
import com.student.service.StudentService;

@Controller
public class StudentController {

	private StudentService studentService;

	@Autowired
	public void setStudentService(StudentService studentService) {
		this.studentService = studentService;
	}

	@RequestMapping("/")
	public String listStudent(Model model) {
		List<Student> studentList = studentService.getAllStudent();
		model.addAttribute("studentList", studentList);
		return "listStudent";
	}

	@RequestMapping(path = "/addStudent")
	public String addStudent() {
		return "addStudent";
	} 

	@RequestMapping(path = "/createStudent", method = RequestMethod.POST)
	public String createStudent(@ModelAttribute Student student) {
		studentService.addStudent(student);
		System.out.println(student);
		return "redirect:/";
	}

	@RequestMapping(path = "/editStudent", method = RequestMethod.GET)
	public String updateStudent(@RequestParam("id") int studentId, Model model) {
		Student student = studentService.getStudentById(studentId);
		model.addAttribute("student", student);
		return "editStudent";
	}

	@RequestMapping(path = "/updateStudent", method = RequestMethod.POST)
	public String updateStudent(@ModelAttribute Student student) {
		studentService.updateStudent(student);
		return "redirect:/";
	}

	@RequestMapping(path = "/deleteStudent", method = RequestMethod.GET)
	public String deleteStudent(@RequestParam("id") int studentId) {
		studentService.deleteStudent(studentId);
		return "redirect:/";
	}
}
