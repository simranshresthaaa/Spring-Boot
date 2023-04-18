package com.simran.service;

import java.util.List;

import com.simran.model.Employee;

public interface EmployeeService {
	public boolean saveEmployee (Employee emp);
	public List<Employee> getallEmployees();
	

}
