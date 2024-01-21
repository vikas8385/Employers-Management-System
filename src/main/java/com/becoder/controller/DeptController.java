package com.becoder.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.becoder.dao.DeptDao;
import com.becoder.entity.Dept;
 

@Controller
public class DeptController {
	@Autowired
	private DeptDao deptDao;
	
	  @RequestMapping(path="/nav")
	    public String nav() {
	    	 return  "result";
	    }
    @RequestMapping(path="/add")
	public String dept(Model m) {
    	List<Dept> list=deptDao.getAllDept();
    	m.addAttribute("deptList",list);
	   return "department";
   }
    @RequestMapping(path="/addDept")
    public String addDept() {
    	 return  "dept";
    }
    @RequestMapping(path="/createDept",method = RequestMethod.POST)
    public String createDept(@ModelAttribute Dept dept,HttpSession session) {
    	System.out.println(dept);
    	int i = deptDao.saveDept(dept);
    	session.setAttribute("msg","Register Successfully");
    	return "redirect:/addDept";
    }
}
