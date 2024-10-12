package class_student.dao;

import java.util.List;

import class_student.entities.Course;
import class_student.entities.Laravel;
import class_student.entities.Nodejs;
import class_student.entities.Php;


public interface NodejsDAO {
	public List<Nodejs> getNodejs();
	public boolean InsertNodejs(Nodejs n);
	
	public Course getNodejsById(String nodejsId);
	public boolean UpdateNodejs(Nodejs n);
	public boolean DeleteNodejs(String nodejsId);
	public List<Php> getNodejsByName(String name);
	public List<Php> getCousPagination(Integer offset, Integer maxResult);
	public Long getTotalPhpPagination();
}
