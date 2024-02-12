package com.student.model;

import javax.persistence.Entity;

@Entity
public class Student {
	private int studentId;
	private String studentName;
	private String studentAddress;
	private String studentCity;
	private String studentState;
	private int studentZipCode;

	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getStudentAddress() {
		return studentAddress;
	}

	public void setStudentAddress(String studentAddress) {
		this.studentAddress = studentAddress;
	}

	public String getStudentCity() {
		return studentCity;
	}

	public void setStudentCity(String studentCity) {
		this.studentCity = studentCity;
	}

	public String getStudentState() {
		return studentState;
	}

	public void setStudentState(String studentState) {
		this.studentState = studentState;
	}

	public int getStudentZipCode() {
		return studentZipCode;
	}

	public void setStudentZipCode(int studentZipCode) {
		this.studentZipCode = studentZipCode;
	}

	@Override
	public String toString() {
		return "Student [studentId=" + studentId + ", studentName=" + studentName + ", studentAddress=" + studentAddress
				+ ", studentCity=" + studentCity + ", studentState=" + studentState + ", studentZipCode="
				+ studentZipCode + "]";
	}

	public Student(int studentId, String studentName, String studentAddress, String studentCity, String studentState,
			int studentZipCode) {
		super();
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentAddress = studentAddress;
		this.studentCity = studentCity;
		this.studentState = studentState;
		this.studentZipCode = studentZipCode;
	}

	public Student() {
		super();
	}

}
