package com.hakunamatata.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hakunamatata.springmvc.entity.Department;
import com.hakunamatata.springmvc.repository.impl.DepartmentDAO;
import com.hakunamatata.springmvc.service.ServiceInterface;

/**
 * @author BaoBB
 *
 */
@Service("departmentService")
public class DepartmentService implements ServiceInterface<Department> {
	@Autowired
	private DepartmentDAO	departmentDAO;
	@Override
	public void insert(Department vo) {
		departmentDAO.insert(vo);	
	}

	@Override
	public void update(Department vo) {
		departmentDAO.update(vo);
	}

	@Override
	public void delete(Department vo) {
		departmentDAO.delete(vo);	
	}

	@Override
	public Department get(Department vo) {
		return departmentDAO.get(vo);
	}

	@Override
	public List<Department> list(Department vo) {
		return departmentDAO.list(vo);
	}
}
