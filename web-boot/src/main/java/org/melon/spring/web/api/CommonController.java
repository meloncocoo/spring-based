package org.melon.spring.web.api;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.LocaleResolver;

@RestController
@RequestMapping("/api")
public class CommonController {

	private final Logger log = LoggerFactory.getLogger(CommonController.class);
	
	@Autowired
	LocaleResolver localeResolver;
	
	@RequestMapping(value = "/language")
	public ResponseEntity<?> changeLanguage(Locale locale, HttpServletRequest request, HttpServletResponse response) throws Exception {
		localeResolver.setLocale(request, response, locale);
		log.info("Change locale to: " + locale.getLanguage());
		return new ResponseEntity<>(HttpStatus.OK);
	}
}
