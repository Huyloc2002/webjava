package class_student.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import class_student.dao.JavaDAO;
import class_student.dao.PhpDAO;
import class_student.entities.Course;
import class_student.entities.Java;
import class_student.entities.Php;

@Repository
public class JavaDAOImpl implements JavaDAO{
@Autowired
private SessionFactory sessionFactory;

	@Override
	public List<Java> getJavas() {
		Session openSession = sessionFactory.openSession();
		try {
			List list = openSession.createQuery("from Java order by JavaId DESC").list();
			
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			openSession.close();
			
		}
		return null;
	}

	@Override
	public boolean InsertJava(Java j) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Course getJavaById(String javaId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean UpdateJava(Java j) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean DeleteJava(String javaId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Long getTotalJavaPagination() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Java> getphpByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Java> getCousPagination(Integer offset, Integer maxResult) {
		// TODO Auto-generated method stub
		return null;
	}

}
