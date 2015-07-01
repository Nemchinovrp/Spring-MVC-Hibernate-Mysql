package ru.org.nem.Service;

import java.util.List;

import ru.org.nem.DAO.StudentDAO;
import ru.org.nem.model.Student;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class StudentServiceImpl implements StudentService{
	
	@Autowired
	private StudentDAO studentDAO;
	
	public void add(Student student) {
		studentDAO.add(student);
	}

	@Override
	public void edit(Student student) {
		studentDAO.edit(student);
		
	}

	@Override
	public void delete(int studentId) {
		studentDAO.delete(studentId);
	}

	@Override
	public Student getStudent(int studentId) {
		
		return studentDAO.getStudent(studentId);
	}

	@Override
	public List getAllStudent() {
		
		return studentDAO.getAllStudent();
	}

}
