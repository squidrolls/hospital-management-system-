package com.yanzhen;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan({"com.yanzhen.dao","com.yanzhen.config"})
public class Permission2Application {

    public static void main(String[] args) {
        SpringApplication.run(Permission2Application.class, args);
    }

}
