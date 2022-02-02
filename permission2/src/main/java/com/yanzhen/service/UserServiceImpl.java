package com.yanzhen.service;

import com.yanzhen.dao.UserDao;
import com.yanzhen.po.Menu;
import com.yanzhen.po.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Override
    public User queryUserByName(String username) {
        return userDao.queryUserByName(username);
    }

    @Override
    public User queryUserById(Integer id) {
        return userDao.queryUserById(id);
    }

    @Override
    public List<User> findUrlAndPermByUserId(Integer id) {
        return userDao.findUrlAndPermByUserId(id);
    }

    @Override
    public List<Menu> queryMenuUrlAndPermByUserId(Integer id) {
        return userDao.queryMenuUrlAndPermByUserId(id);
    }
}
