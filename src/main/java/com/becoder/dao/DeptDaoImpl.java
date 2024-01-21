package com.becoder.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.becoder.entity.Dept;
 
@Repository
public class DeptDaoImpl implements DeptDao {
	 @Autowired
		private HibernateTemplate hibernateTemplate;
		
		
		
		@Transactional
		public int saveDept(Dept dept) {
			// TODO Auto-generated method stub
			 int i =(Integer) hibernateTemplate.save(dept);
			return i;
		}

		 
		public Dept getDeptById(int id) {
			// TODO Auto-generated method stub
			Dept dept = hibernateTemplate.get(Dept.class, id);
			return dept;
		}

		 
		public List<Dept> getAllDept() {
			// TODO Auto-generated method stub
			List<Dept> list = hibernateTemplate.loadAll(Dept.class);
			return list;
		}
}
