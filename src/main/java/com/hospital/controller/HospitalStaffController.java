package com.hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RestController("HospitalStaff")
public class HospitalStaffController {
	public String saveHospitalStaff() {
		
		return "hospitalStaff/saveHospitalStaff";
		
	}

}
