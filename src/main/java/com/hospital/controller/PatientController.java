package com.hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Patient")
public class PatientController {
	
	@GetMapping("savePatient")
	public String savepatient() {
		
		return "patient/savePatient";
		
	}

}
