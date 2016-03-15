package org.melon.spring.web;

import org.melon.spring.repository.PermissionRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sys/permission")
public class PermissionController {
	
	private final Logger log = LoggerFactory.getLogger(PermissionController.class);

	@Autowired
	private PermissionRepository permissionRepository;
	
	@RequestMapping("")
	public String index(Model model) {
		log.debug("Request to get all permission.");
		model.addAttribute("permissions", permissionRepository.findAll());
		log.debug("SIZE: " + permissionRepository.findAll().size());
		
		return "permission/index";
	}
	
	@RequestMapping("/add")
	public String add(Model model) {
		log.debug("Request to add new permission page.");
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "permission/add";
	}
	
}
