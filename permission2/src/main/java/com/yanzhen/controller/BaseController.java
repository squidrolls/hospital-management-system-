package com.yanzhen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BaseController {

    @RequestMapping("login")
    public String login(){
        return "pages/login";
    }

    @RequestMapping("index")
    public String index(){
        return "pages/index";
    }

    @RequestMapping("dept")
    public String dept(){
        return "pages/page/dept";
    }

    @RequestMapping("addDept")
    public String addDept(){
        return "pages/page/addDept";
    }

    @RequestMapping("updateDept")
    public String updateDept(){
        return "pages/page/updateDept";
    }

    @RequestMapping("deleteDept")
    public String deleteDept(){
        return "pages/page/deleteDept";
    }


    @RequestMapping("users")
    public String users(){
        return "pages/page/users";
    }

    @RequestMapping("addUser")
    public String addUser(){
        return "pages/page/addUser";
    }

    @RequestMapping("updateUser")
    public String updateUser(){
        return "pages/page/updateUser";
    }

    @RequestMapping("deleteUser")
    public String deleteUser(){
        return "pages/page/deleteUser";
    }

//    @RequestMapping("add")
//    public String addUser(){
//        return "pages/add";
//    }
//
//    @RequestMapping("update")
//    public String updateUser(){
//        return "pages/update";
//    }
//
//    @RequestMapping("delete")
//    public String deleteUser(){
//        return "pages/delete";
//    }
//
//    @RequestMapping("user")
//    public String userindex(){
//        return "pages/user";
//    }

    /**
     * 设置页面 未授权跳转页面
     */
    @RequestMapping("noPermission")
    public String noPermission(){
        return "pages/noPermission";
    }

}
