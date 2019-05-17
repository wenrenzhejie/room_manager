package com.it666.room_manager.user.service;

import com.it666.room_manager.user.dao.UserDao;
import com.it666.room_manager.user.domain.User;
import com.it666.room_manager.user.exception.UserException;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserServiceImpl implements UserService{
    private UserDao userDao;
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public void regist(User user) throws UserException {
        User u1 = userDao.findByName(user.getUsername());
        if(u1 != null){
            throw new UserException("用户名已被注册");
        }
        u1 = userDao.findByEmail(user.getEmail());
        if(u1 != null){
            throw new UserException("邮箱已被注册");
        }
        //到这里，正式插入用户
        userDao.regist(user);

    }

    @Override
    public void active(User user) throws UserException {
        User u1 = userDao.findByActiveCode(user.getActivecode());
        if(u1 == null){
            throw new UserException("您尚未注册，请前去注册");
        }
        boolean state = u1.isState();
        if(state){
            throw new UserException("您已激活，请不要重复激活");
        }
        u1.setState(true);
        userDao.active(u1);
    }

    @Override
    public User login(User user) throws UserException {
        User u1 = userDao.findByName(user.getUsername());
        System.out.println(u1.getUsername()+":"+u1.getPassword());
        if(u1 == null || !u1.getPassword().equals(user.getPassword())){
            System.out.println(!u1.getPassword().equals(user.getPassword()));
            throw new UserException("用户名或密码错误");
        }
        return u1;
    }

    @Override
    public User findByName(String username) {
        return userDao.findByName(username);
    }

    @Override
    public void updateUser(User u) {
        userDao.updateUser(u);
    }

    @Override
    public User findById(String uid) {
        return userDao.findById(uid);
    }
}
