package class_student.service;

import class_student.entities.User;

public interface UserService {
    void save(User user);
    User findByUsername(String username);
}
