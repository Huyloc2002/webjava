package class_student.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import class_student.dao.UserDAO;
import class_student.entities.User;
import class_student.service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Autowired
    private PasswordEncoder passwordEncoder;

    public void save(User user) {
        user.setPassWord(passwordEncoder.encode(user.getPassWord()));
        userDAO.save(user);
    }
    @Override
    public User findByUsername(String username) {
        return userDAO.findByUserName(username);
    }
}