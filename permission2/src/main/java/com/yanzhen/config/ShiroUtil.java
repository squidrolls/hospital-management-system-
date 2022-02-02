package com.yanzhen.config;

import com.yanzhen.po.Menu;
import com.yanzhen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Component("shiroUtil")
public class ShiroUtil {

    @Autowired
    private UserService userService;

    /**
     * 获取过滤的配置
     */
    public Map<String,String> perms(){
        LinkedHashMap <String,String> map=new LinkedHashMap<String,String>();
        /**
         * shiro内置过滤器
         *  常用过滤器
         *  anon:不需要认证就可以访问的页面
         *  authc:必须认证才可以访问的页面
         *  user:如果使用了记住我功能可以直接访问的页面
         *  perms：必须得到资源权限才可以访问的
         *  role：必须得到角色权限才可以访问的
         */
        //假设用户主页都可以访问，增删改必须认证后访问
        map.put("/login","anon");
        map.put("/LoginIn","anon");//放行登录
//        map.put("/**","authc");//添加认证
        return map;
    }

    /**
     * 获取权限列表
     */
    public List<Menu> queryPerm(Integer userId){
        List<Menu> list=userService.queryMenuUrlAndPermByUserId(userId);
        return list;
    }

}
