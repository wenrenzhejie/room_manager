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
        u1 = userDao.findByEmail(user.getUsername());
        if(u1 != null){
            throw new UserException("邮箱已被注册");
        }
        //到这里，正式插入用户
        userDao.regist(user);

    }
}
