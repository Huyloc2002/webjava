package class_student.dao;

import java.util.List;

import class_student.entities.Course;
import class_student.entities.Java;
import class_student.entities.Php;


public interface JavaDAO {
	public List<Java> getJavas();
	public boolean InsertJava(Java j);
	
	public Course getJavaById(String javaId);
	public boolean UpdateJava(Java j);
	public boolean DeleteJava(String javaId);
	public List<Java> getphpByName(String name);
	public List<Java> getCousPagination(Integer offset, Integer maxResult);
	public Long getTotalJavaPagination();
}
