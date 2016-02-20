package org.melon.spring.web;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import org.melon.spring.domain.Order;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/orders")
public class OrderController {
	
	private final Logger log = LoggerFactory.getLogger(OrderController.class);

	@RequestMapping("")
	String index(Model model) {
		List<Order> orders = readOrdersFromFile();
		log.info("sales count: " + orders.size());
		model.addAttribute("orders", orders);
		
		return "orders/index";
	}
	
	private List<Order> readOrdersFromFile() {
		InputStream in = OrderController.class.getResourceAsStream("/data/orders.csv");
		BufferedReader reader = new BufferedReader(new InputStreamReader(in));
		String line;
		String[] record;
		Order order;
		List<Order> orders = new ArrayList<>();
		
		try {
			while ((line = reader.readLine()) != null) {
				record = line.split(";");
				
				if (null != record) {
					order = new Order();
					order.setYear(new Integer(record[0].split("\\.")[0]));
					order.setQuarter(new Integer(record[0].split("\\.")[1]));
					order.setOrganize(record[1]);
					order.setCode(record[2]);
					order.setRefCode(record[3]);
					order.setAmountType(record[4]);
					order.setProduct(record[5]);
					order.setProductLevel(record[6]);
					order.setQuantity(record[7]);
					order.setUnit(record[8]);
					order.setScope(record[9]);
					order.setCustomer(record[10]);
					order.setCurrency(record[11]);
					order.setBasePrice(new Double(record[12]));
					order.setAdditionalPrice(new Double(record[13]));
					order.setPrice(new Double(record[14]));
					order.setIncome(new Double(record[15]));
					order.setCost(new Double(record[16]));
					orders.add(order);
				}
			}
		} catch (IOException e) {
			log.error("Read file error(file: orders.csv)");
			e.printStackTrace();
		}
		
		try {
			reader.close();
			in.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return orders;
	}
}
