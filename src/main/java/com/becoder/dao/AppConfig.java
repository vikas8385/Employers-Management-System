package com.becoder.dao;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class AppConfig {
	 
	 
	    @Bean
	    public DeptDao deptDao() {
	        return (DeptDao) new DeptDaoImpl(); // Assuming DeptDaoImpl is the implementation class
	    }
	}


