package com.yanzhen.dao;

import com.yanzhen.po.Menu;
import com.yanzhen.po.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Component;

import java.util.List;

@Component("userDao")
public interface UserDao {
    //根据用户名查询用户信息
    public User queryUserByName(@Param("username") String username);

    //根据id查询用户信息
    User queryUserById(Integer id);

    /**
     * 根据用户的id查询用户权限和url标识
     */
    List<User> findUrlAndPermByUserId(Integer id);

    /**
     * 查询按钮级别的权限信息
     */
    List<Menu> queryMenuUrlAndPermByUserId(Integer id);
}
