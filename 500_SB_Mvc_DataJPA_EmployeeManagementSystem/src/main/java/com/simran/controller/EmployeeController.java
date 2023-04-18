package com.simran.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.simran.model.Employee;
import com.simran.service.impl.EmployeeServiceImpl;

@Controller
public class EmployeeController {
	@Autowired
	private EmployeeServiceImpl serviceImpl;
	
	@RequestMapping(value = {"/","/loadForm"})
	public String loadForm(Model model)
	{
		Employee emp=new Employee();
		
		model.addAttribute("emp",emp);
		
		return "employee";
		
		
	}
	
	@RequestMapping("/insert")
	public String handleForm(@ModelAttribute("emp")   Employee emp,Model model)
	{
	
		
		boolean saveEmployee = serviceImpl.saveEmployee(emp);
		
	String msg="";
		
		if(saveEmployee)
		{
			msg="Employee Added SuccessFully";
		}
		else
		{
			msg="Failed to Add Employee";
		}
		model.addAttribute("msg",msg);
		return "employee";
	}
	
	
	
	@GetMapping("/viewEmployee")
	public String viewAllEmployees(Model model)
	{
		List<Employee>employeeList=serviceImpl.getallEmployees();
		model.addAttribute("employees",employeeList);
		return "viewemployee";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}