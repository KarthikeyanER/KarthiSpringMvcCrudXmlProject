package com.gl.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.gl.dao.EmployeeDao;
import com.gl.model.Employee;
import com.gl.service.EmployeeService;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeService eService;

	@RequestMapping("/employee")
	public String empPage(Model model) {
		model.addAttribute("empList", eService.findall());
		return "employee";
	}

	@RequestMapping("/addRecord")
	public String addPage(Model model) {
		model.addAttribute("emp", new Employee());

		return "addRecord";
	}

	@PostMapping("/saveEmployee")
	public String empPageReturn(@ModelAttribute("emp") Employee e, Model m) {

		eService.save(e);
		m.addAttribute("empList", eService.findall());
		return "employee";
	}

	/* It deletes record for the given id in URL and redirects to /viewemp */
	@RequestMapping(value = "/deleteEmployee/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		Employee e = eService.getEmpById(id);
		eService.delete(e);
		return "redirect:/employee";
	}

	@RequestMapping(value = "/updateEmp/{id}", method = RequestMethod.GET)
	public String updateRecord(@PathVariable int id, Model model) {
		model.addAttribute("emp", eService.getEmpById(id));
		System.out.println("id going");
		return "updateRecord";

	}

	@PostMapping("/updateEmp/saveUpdate")
	public String saveUpdateEmp(@ModelAttribute("emp") Employee emp) {
		eService.update(emp);

		return "redirect:/employee";
	}

}
