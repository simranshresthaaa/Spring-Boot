package com.simran.service.impl;

import java.util.List;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.simran.model.Employee;
import com.simran.repo.EmployeeRepo;
import com.simran.service.EmployeeService;

import com.simran.entity.EmployeeEntity;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeRepo daoImpl;

	@Override
	public boolean saveEmployee(Employee emp) {
		boolean flag = false;
		EmployeeEntity empEn = new EmployeeEntity();
		empEn.setEmpName(emp.getEmpName());
		empEn.setEmpAddress(emp.getEmpAddress());

		EmployeeEntity saveEmp = daoImpl.save(empEn);
		if (saveEmp != null)
			flag = true;

		return flag;
	}

	@Override
	public List<Employee> getallEmployees() {
		
		List<EmployeeEntity> EmployeeDetails = daoImpl.findAll();
		List<Employee> empAdd = new ArrayList<Employee>();
		for(EmployeeEntity empEn: EmployeeDetails) {
			Employee emp = new Employee();
			emp.setEmpName(empEn.getEmpName());
			emp.setEmpAddress(empEn.getEmpAddress());
			emp.setEmpNo(empEn.getEmpNo());
			
			empAdd.add(emp);
		}
		
		return null;
	}

}
