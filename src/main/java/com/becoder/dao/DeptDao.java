package com.becoder.dao;

import java.util.List;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Repository;

import com.becoder.entity.Dept;
 
public interface DeptDao {
	
	public int saveDept(Dept dept);
	
	  public Dept getDeptById(int id);
	  
	  public List<Dept> getAllDept();
}
 