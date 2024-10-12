package class_student.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import class_student.dao.CourseDAO;
import class_student.entities.Course;
import class_student.entities.Student;
@Repository
public class CourseDAOImpl implements CourseDAO{
@Autowired
private SessionFactory sessionFactory;

	@Override
	public List<Course> getCourses() {
		Session openSession = sessionFactory.openSession();
		try {
			List list = openSession.createQuery("from Course order by CouId DESC").list();
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			openSession.close();
			
		}
		return null;
	}


	@Override
	public boolean InsertCourse(Course c) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.save(c);
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
	public Course getCourseById(String couId) {
		Session session = sessionFactory.openSession();
		try {
		Course course = session.get(Course.class,couId);
		  return course;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			
			session.close();
		}
		return null;
	}

	@Override
	public boolean UpdateCourse(Course c) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.update(c);
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
	public boolean DeleteCourse(String couId) {
		Session session = sessionFactory.openSession();
		try {
			session.beginTransaction();
			session.delete(getCourseById(couId));
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
	public List<Course> getCousByName(String name) {
		Session openSession = sessionFactory.openSession();
		try {
			if(name==null || name.length()==0)
				name= "%";
			else
				name = "%"+name+"%";
		  List list = openSession.createQuery("from Course where courseName like :courseName")
				  .setParameter("courseName", name)
				  .list();
		  return list;
		} catch (Exception e) {
			e.printStackTrace();
			
		}finally {
			openSession.close();
		}
		return null;
	}


	@Override
	public List<Course> getCousPagination(Integer offset, Integer maxResult) {
		Session session = sessionFactory.openSession();
		try {
			List list = session.createQuery("from Course")		
			.setFirstResult(offset)
			.setMaxResults(maxResult)
			.list();
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally {
			session.close();
		}
		return null;
	}


	@Override
	public Long getTotalStudentsPagination() {
		Session openSession = sessionFactory.openSession();
		try {
			List list = openSession.createQuery("select count(*) from Course")
			.list();
			return (Long) list.get(0);
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

}
