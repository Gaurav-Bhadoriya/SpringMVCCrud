package com.student.dao;

import java.util.List;
import com.student.model.Student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

@Repository
public class StudentDAOImpl implements StudentDAO {

	private NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	@Override
	public List<Student> getAllStudent() {
		String sql = "SELECT studentId, studentName, studentAddress, studentCity, studentState, studentZipCode FROM studentDetails";
		List<Student> studentList = namedParameterJdbcTemplate.query(sql, new BeanPropertyRowMapper<>(Student.class));
		return studentList;
	}

	@Override
	public void addStudent(Student student) {
		String sql = "INSERT INTO studentDetails(studentName, studentAddress, studentCity, studentState, studentZipCode) VALUES (:studentName, :studentAddress, :studentCity, :studentState, :studentZipCode)";
		namedParameterJdbcTemplate.update(sql, getSqlParameterByModel(student));
	}

	private SqlParameterSource getSqlParameterByModel(Student student) {
		MapSqlParameterSource parameterSource = new MapSqlParameterSource();{
			parameterSource.addValue("studentId", student.getStudentId());
			parameterSource.addValue("studentName", student.getStudentName());
			parameterSource.addValue("studentAddress", student.getStudentAddress());
			parameterSource.addValue("studentCity", student.getStudentCity());
			parameterSource.addValue("studentState", student.getStudentState());
			parameterSource.addValue("studentZipCode", student.getStudentZipCode());
		}
		return parameterSource;
	}

	@Override
	public void deleteStudent(Integer studentId) {
		String sql = "DELETE FROM studentDetails WHERE studentId = :studentId";
		SqlParameterSource namedParameters = new MapSqlParameterSource("studentId", studentId);
		namedParameterJdbcTemplate.update(sql, namedParameters);
	}

	@Override
	public void updateStudent(Student student) {
		String sql = "UPDATE studentDetails SET studentName = :studentName, studentAddress = :studentAddress , studentCity = :studentCity, studentState = :studentState, studentZipCode = :studentZipCode WHERE studentId = :studentId";
		namedParameterJdbcTemplate.update(sql, getSqlParameterByModel(student));
	}

	@Override
	public Student getStudentById(int studentId) {
		String sql = "SELECT * FROM studentDetails WHERE studentId = :studentId";
		SqlParameterSource namedParameters = new MapSqlParameterSource("studentId", studentId);
		try {
			return namedParameterJdbcTemplate.queryForObject(sql, namedParameters, new BeanPropertyRowMapper<>(Student.class));
		} catch (EmptyResultDataAccessException e) {
			return null;
		}
	}
}