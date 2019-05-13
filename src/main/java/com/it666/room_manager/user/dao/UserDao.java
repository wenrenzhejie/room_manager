package com.it666.room_manager.user.dao;

import com.it666.room_manager.user.domain.User;

public interface UserDao {
    public User findByName(String username);
    public User findByEmail(String email);
    public void regist(User user);
}
