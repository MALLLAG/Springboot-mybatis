package com.cos.blog.test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HttpControllerTest {

	@GetMapping("/http/get")
	public String getTest() {
		return "get";
	}
	
}
