package com.hakunamatata.springmvc.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.repository.DAO;
/**
 * @author BaoBB
 *
 */
@Repository("departmentDAO")
public class DepartmentDAO implements DAO<Department> {
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Department vo) {
		session.insert("Department.insert",vo);
		
	}

	@Override
	public void update(Department vo) {
		session.update("Department.update",vo);
	}

	@Override
	public void delete(Department vo) {
		session.delete("Department.delete",vo);
	}

	@Override
	public Department get(Department vo) {
		return session.selectOne("Department.selectOne", vo);
	}

	@Override
	public List<Department> list(Department vo) {
		return session.selectList("Department.selectList",vo);
	}

}
