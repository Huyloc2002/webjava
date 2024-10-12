package class_student.dao;

import class_student.entities.User;

public interface UserDAO {
	  void save(User user);
	public User findByUserName(String username);
}