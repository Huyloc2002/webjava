package class_student.dao.impl;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import class_student.dao.ContactDAO;
import class_student.dao.CourseDAO;
import class_student.entities.Contact;
import class_student.entities.Course;
import class_student.entities.Student;

@Repository
public class ContactDAOImpl implements ContactDAO {

    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public void save(Contact contact) {
        sessionFactory.getCurrentSession().save(contact);
    }
}