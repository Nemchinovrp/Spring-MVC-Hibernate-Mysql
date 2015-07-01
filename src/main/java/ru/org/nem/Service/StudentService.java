package ru.org.nem.Service;

import java.util.List;

import ru.org.nem.model.Student;

public interface StudentService {
	public void add(Student student);
	public void edit(Student student);
	public void delete(int studentId);
	public Student getStudent(int studentId);
	public List getAllStudent();
	
}
