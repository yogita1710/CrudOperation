package dao;

import java.util.List;
import model.Student1;

public interface StudentDao {

	public void create(Student1 stud);
	public List<Student1> showAllStudents();
	public void deleteStudentById(int id);
	public Student1 getStudentById(int id);
	public void updateStudent(Student1 stu);
}
