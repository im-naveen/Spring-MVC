package com.lti.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.lti.pojo.Customer;

@Controller
public class MyController {
	
	@RequestMapping("/showhome")
	public ModelAndView showHome() {
		ModelAndView view1=new ModelAndView("home");
		return view1;
	}
	@RequestMapping("/register")
	public ModelAndView register() {
		ModelAndView view1=new ModelAndView("register");
		view1.addObject("register", new Customer());
		return view1;
	}
	
	@RequestMapping("/registerCust")
	public ModelAndView saveCustomer(@ModelAttribute("register") Customer cust)
	{
		System.out.println("Data Recieved is ");
		System.out.println(cust.getCustid()+" "+cust.getCustName()+" "+cust.getEmail());
		return new ModelAndView("home");
		
	}

}
