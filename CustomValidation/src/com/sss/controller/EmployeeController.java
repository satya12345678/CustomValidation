package com.sss.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.sss.bean.EmployeeVO;
import com.sss.validation.EmployeeValidator;

@Controller
public class EmployeeController {
	 @Autowired 
	EmployeeValidator validator;
	@RequestMapping(value="/" , method=RequestMethod.GET)
	public String homepage(@ModelAttribute("employee") EmployeeVO emp) {
		System.out.println("Entering Homepage action");
		return "homepage";
	}
	
	@RequestMapping(value="success",method=RequestMethod.GET)
	public String success(Model m) {
		
		return "success";
	}
	
	
	
	@RequestMapping(value="addEmployee",method=RequestMethod.GET)
	public String submitForm(@ModelAttribute("employee") EmployeeVO emp,BindingResult result) {
		System.out.println("Entering Add Employee Action "+emp.getFname()+"---Pincode="+emp.getAddress().getPincode());
		validator.validate(emp, result);
		String req_url= ((ServletRequestAttributes) RequestContextHolder.currentRequestAttributes()).getRequest().getRequestURL().toString();
		System.out.println("current URL="+req_url);
		if(result.hasErrors()) {
		    return "homepage";
		}

		else {
			return "redirect:/success";
		}
		
	}
}
