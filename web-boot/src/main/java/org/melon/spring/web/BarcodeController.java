package org.melon.spring.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/barcode")
public class BarcodeController {

	@RequestMapping("/track")
	String track() {
		return "barcode/track";
	}
	
}
