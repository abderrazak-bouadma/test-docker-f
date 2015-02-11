package com.cdc.plateform.fast.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.http.MediaType;

@RestController
public class FastController {

	@RequestMapping(value="/", produces=MediaType.APPLICATION_JSON_VALUE)
	public String sayHello() {
		return "Hello there !";
	}
}