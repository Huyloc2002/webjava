package class_student.dao.impl;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import class_student.dao.AccountDAO;
import class_student.entities.Account;

@Repository
public class AccountDAOImpl implements AccountDAO{
	@Autowired
	SessionFactory sessionFactory;
	// phương thức lấy Account theo username
	@Override
	public Account getAccount(String username) {
		Account account=null;
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Account where username=:username");
		query.setParameter("username", username);
		try {
			account=(Account)query.getSingleResult();
		}catch (Exception e) {
			
		}finally {
			session.close();
		}
		return account;
	}
}
