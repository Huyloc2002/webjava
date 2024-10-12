package class_student.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import class_student.dao.NodejsDAO;
import class_student.entities.Course;

import class_student.entities.Nodejs;
import class_student.entities.Php;

@Repository
public class NodejsDAOImpl implements NodejsDAO{
@Autowired
private SessionFactory sessionFactory;

	@Override
	public List<Nodejs> getNodejs() {
		Session openSession = sessionFactory.openSession();
		try {
			List list = openSession.createQuery("from Nodejs order by NodejsId DESC").list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			openSession.close();
			
		}
		return null;
	}

	@Override
	public boolean InsertNodejs(Nodejs n) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Course getNodejsById(String nodejsId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean UpdateNodejs(Nodejs n) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean DeleteNodejs(String nodejsId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Php> getNodejsByName(String name) {
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
