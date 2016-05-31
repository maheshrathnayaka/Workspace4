package com.restful.client.controller;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.springframework.http.HttpEntity;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.restful.client.model.Employee;

@Controller
public class EmployeeController {
	static final Logger logger = LogManager.getLogger(EmployeeController.class.getName());
	private RestTemplate restTemplate = new RestTemplate();

	@RequestMapping(value = "/employees", method = RequestMethod.GET)
	public String getAllEmployees(Model model) {
		try {
			logger.info("----- Show home page (All Employees) -----");
			String url = "http://localhost:1990/employees";
			model.addAttribute("employees", restTemplate.getForObject(url, Employee[].class));
		} catch (Exception e) {
			logger.error(e.getMessage());
		}
		return "employees_page";
	}

	@RequestMapping(value = "/view_emp", method = RequestMethod.GET)
	public String getEmployee(@RequestParam("eid") int eid, Model model) {
		try {
			logger.info("----- Get employee: " + eid + " results -----");
			String url = "http://localhost:1990/employees/{eid}";
			ResponseEntity<Employee> employeeEntity = restTemplate.getForEntity(url, Employee.class, eid);
			model.addAttribute("employee", employeeEntity.getBody());
		} catch (Exception e) {
			logger.error(e);
		}
		return "get_employee";
	}

	@RequestMapping(value = "/add_emp", method = RequestMethod.GET)
	public String getAddEmployeePage(Model model) {
		try {
			logger.info("----- Show add employee page -----");
			model.addAttribute("employeeAttribute", new Employee());
		} catch (Exception e) {
			logger.error(e);
		}
		return "add_employee_page";
	}

	@RequestMapping(value = "/add_emp", method = RequestMethod.POST)
	public String addEmployee(@ModelAttribute("personAttribute") Employee employee, Model model) {
		try {
			logger.info("----- New employee added -----");
			String url = "http://localhost:1990/employees";
			HttpEntity<Employee> entity = new HttpEntity<Employee>(employee);
			ResponseEntity<Employee> response = restTemplate.postForEntity(url, entity, Employee.class);
			Employee e = response.getBody();
		} catch (Exception e) {
			logger.error(e);
		}
		return "success_page";
	}

	@RequestMapping(value = "/remove_emp", method = RequestMethod.GET)
	public String removeEmployee(@RequestParam("eid") int eid, Model model) {
		try {
			logger.info("----- Delete employee -----");
			String url = "http://localhost:1990/employees/{eid}";
			restTemplate.delete(url, eid);
		} catch (Exception e) {
			logger.error(e);
		}
		return "delete_result_page";
	}

	@RequestMapping(value = "/update_emp", method = RequestMethod.GET)
	public String getUpdateEmployeePage(@RequestParam(value = "eid", required = true) int eid, Model model) {
		try {
			logger.info("----- Get employee update page -----");
			String url = "http://localhost:1990/employees/{eid}";
			ResponseEntity<Employee> employeeEntity = restTemplate.getForEntity(url, Employee.class, eid);
			model.addAttribute("employeeAttribute", employeeEntity.getBody());
		} catch (Exception e) {
			logger.error(e);
		}
		return "update_employee_page";
	}

	@RequestMapping(value = "/update_emp", method = RequestMethod.POST)
	public String updateEmployee(@ModelAttribute("employeeAttribute") Employee employee,
			@RequestParam(value = "eid", required = true) Long eid, Model model) {
		try {
			logger.info("----- Employee updated (EID: "+ eid + ")-----");
			String url = "http://localhost:1990/employees/{eid}";
			restTemplate.put(url, employee, eid);
		} catch (Exception e) {
			logger.error(e);
		}
		return "update_result_page";
	}
}
