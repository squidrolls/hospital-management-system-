package com.yanzhen.controller;



import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class LoginController {


    /**
     * 登录逻辑处理
     */
    @RequestMapping("/LoginIn")

    public String loginIn(String username, String password, Model model){
        //使用shiro编写认证操作
        //1 获取subject
        Subject subject= SecurityUtils.getSubject();
        //2、封装用户数据
        UsernamePasswordToken token= new UsernamePasswordToken(username,password);
        //3 执行登录方法
        try {
            subject.login(token);
            //跳转到成功页面
            return "redirect:index";
        }catch (UnknownAccountException ex){
            model.addAttribute("msg","用户名不存在");
            return "pages/login";
        }catch (IncorrectCredentialsException exs){
            model.addAttribute("msg","密码不正确");
            return "pages/login";
        }
    }
}
