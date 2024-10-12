package class_student.dao;

import java.util.List;

import class_student.entities.Course;
import class_student.entities.Student;

public interface CourseDAO {
	public List<Course> getCourses();
	public boolean InsertCourse(Course c);
	
	public Course getCourseById(String couId);
	public boolean UpdateCourse(Course c);
	public boolean DeleteCourse(String couId);
	public List<Course> getCousByName(String name);
	public List<Course> getCousPagination(Integer offset, Integer maxResult);
	public Long getTotalStudentsPagination();
}
