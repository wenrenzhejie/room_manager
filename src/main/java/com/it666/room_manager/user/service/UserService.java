package com.it666.room_manager.user.service;

import com.it666.room_manager.user.domain.User;
import com.it666.room_manager.user.exception.UserException;

public interface UserService{
    public void regist(User user) throws UserException;
    public void active(User user) throws UserException;
    public void login(User user) throws UserException;
}
