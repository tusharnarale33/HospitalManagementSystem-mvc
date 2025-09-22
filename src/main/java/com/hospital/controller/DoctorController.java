package com.hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Doctor")
public class DoctorController {
	
	@GetMapping("saveDoctor")
	public String  saveDoctor() {
		return "doctor/saveDoctor";
		
	}
	
	
	
	
	
	

}
