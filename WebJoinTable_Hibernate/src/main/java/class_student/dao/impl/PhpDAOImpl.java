package class_student.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import class_student.dao.PhpDAO;
import class_student.entities.Course;
import class_student.entities.Php;

@Repository
public class PhpDAOImpl implements PhpDAO{
@Autowired
private SessionFactory sessionFactory;

	@Override
	public List<Php> getPhps() {
		Session openSession = sessionFactory.openSession();
		try {
			List list = openSession.createQuery("from Php order by PhpId DESC").list();
			
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			openSession.close();
			
		}
		return null;
	}

	@Override
	public boolean InsertPhp(Php p) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(p);
			session.getTransaction().commit();
			return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			session.getTransaction().rollback();
		}finally {
			session.close();
		}
		return false;
	}


	@Override
	public Course getPhpById(String phpId) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public boolean UpdatePhp(Php p) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public boolean DeletePhp(String phpId) {
		// TODO Auto-generated method stub
		return false;
	}


	@Override
	public List<Php> getphpByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Long getTotalPhpPagination() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Php> getCousPagination(Integer offset, Integer maxResult) {
		// TODO Auto-generated method stub
		return null;
	}

}
