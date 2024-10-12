package class_student.dao;

import java.util.List;

import class_student.entities.Course;
import class_student.entities.Laravel;
import class_student.entities.Php;


public interface LaravelDAO {
	public List<Laravel> getLaravels();
	public boolean InsertLaravel(Laravel l);
	
	public Course getLaravelById(String laravelId);
	public boolean UpdateLaravel(Laravel l);
	public boolean DeleteLaravel(String laravelId);
	public List<Php> getLaravelByName(String name);
	public List<Php> getCousPagination(Integer offset, Integer maxResult);
	public Long getTotalPhpPagination();
}
