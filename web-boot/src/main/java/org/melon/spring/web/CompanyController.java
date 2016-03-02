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
		company.setName("超匯桂盟傳動（蘇州）有限公司");
		company.setDescription("描述1");
		companies.add(company);
		
		company = new Company();
		company.setCode("2110");
		company.setName("桂盟鏈條（深圳）有限公司");
		company.setDescription("描述2");
		companies.add(company);
		
		company = new Company();
		company.setCode("2140");
		company.setName("斯茂特科技（深圳）有限公司");
		company.setDescription("描述2");
		companies.add(company);
		
		company = new Company();
		company.setCode("2160");
		company.setName("深圳市科恩斯汽車零配件（深圳）有限公司");
		company.setDescription("描述2");
		companies.add(company);
		
		company = new Company();
		company.setCode("2180");
		company.setName("深圳市全仕通電子（深圳）有限公司");
		company.setDescription("描述2");
		companies.add(company);
		
		company = new Company();
		company.setCode("2320");
		company.setName("超匯桂盟傳動（天津）有限公司");
		company.setDescription("描述2");
		companies.add(company);
		
		model.addAttribute("companies", companies);
		
		return "companies/index";
	}
	
}
