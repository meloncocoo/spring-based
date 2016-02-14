package org.melon.spring.web;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/statistic")
public class StatisticController {

	@RequestMapping()
	String index() {
		return "statistic/index";
	}
	
}
