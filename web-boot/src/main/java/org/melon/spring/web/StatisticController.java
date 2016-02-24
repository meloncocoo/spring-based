package org.melon.spring.web;

import java.util.ArrayList;
import java.util.List;

import org.melon.spring.domain.SaleStatistic;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/statistic")
public class StatisticController {
	
	private final Logger log = LoggerFactory.getLogger(StatisticController.class);

	@RequestMapping()
	String index(Model model) throws Exception {
		List<SaleStatistic> sales = new ArrayList<>();
		SaleStatistic sale;
		
		sale = new SaleStatistic();
		sale.setQuarter("1月");
		sale.setQuantity(56272153.47);
		sale.setIncome(65181677.18);
		sale.setCost(24561400.42);
		sale.setProfit(0.6232f);
		sales.add(sale);
		
		sale = new SaleStatistic();
		sale.setQuarter("2月");
		sale.setQuantity(26843680.04);
		sale.setIncome(28248572.7);
		sale.setCost(11179260.93);
		sale.setProfit(0.6043f);
		sales.add(sale);
		
		sale = new SaleStatistic();
		sale.setQuarter("3月");
		sale.setQuantity(54227327.32);
		sale.setIncome(61363408.49);
		sale.setCost(22045548.83);
		sale.setProfit(0.6407f);
		sales.add(sale);
		
		sale = new SaleStatistic();
		sale.setQuarter("4月");
		sale.setQuantity(0);
		sale.setIncome(0);
		sale.setCost(0);
		sale.setProfit(0.0f);
		sales.add(sale);
		
		log.info("sales count: " + sales.size());
		
		model.addAttribute("sales", sales);
		
		return "statistic/index";
	}
	
}
