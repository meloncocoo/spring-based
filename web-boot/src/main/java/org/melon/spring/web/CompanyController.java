package org.melon.spring.web;

import java.util.ArrayList;
import java.util.List;

import org.melon.spring.domain.Company;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/companies")
public class CompanyController {

	@RequestMapping("")
	String index(Model model) {
		List<Company> companies = new ArrayList<>();
		Company company;
		
		company = new Company();
		company.setCode("2010");
		company.setName("公司名称1");
		company.setDescription("描述1");
		companies.add(company);
		
		company = new Company();
		company.setCode("2320");
		company.setName("公司名称2");
		company.setDescription("描述2");
		companies.add(company);
		
		model.addAttribute("companies", companies);
		
		return "companies/index";
	}
	
}
