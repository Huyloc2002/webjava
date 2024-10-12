package class_student.dao;

import java.util.List;

import class_student.entities.Course;
import class_student.entities.Php;


public interface PhpDAO {
	public List<Php> getPhps();
	public boolean InsertPhp(Php p);
	
	public Course getPhpById(String phpId);
	public boolean UpdatePhp(Php p);
	public boolean DeletePhp(String phpId);
	public List<Php> getphpByName(String name);
	public List<Php> getCousPagination(Integer offset, Integer maxResult);
	public Long getTotalPhpPagination();
}
