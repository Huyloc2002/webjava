package class_student.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import class_student.dao.LaravelDAO;
import class_student.entities.Course;
import class_student.entities.Laravel;
import class_student.entities.Php;

@Repository
public class LaravelDaoImpl implements LaravelDAO{
@Autowired
private SessionFactory sessionFactory;

	@Override
	public List<Laravel> getLaravels() {
		Session openSession = sessionFactory.openSession();
		try {
			List list = openSession.createQuery("from Laravel order by LaravelId DESC").list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			openSession.close();
			
		}
		return null;
	}

	@Override
	public boolean InsertLaravel(Laravel l) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Course getLaravelById(String laravelId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean UpdateLaravel(Laravel l) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean DeleteLaravel(String laravelId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Php> getLaravelByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Php> getCousPagination(Integer offset, Integer maxResult) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Long getTotalPhpPagination() {
		// TODO Auto-generated method stub
		return null;
	}


}
