package com.project.recipe.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

	@GetMapping("/recipeLoginPage")
	public String recipeLoginPage() {
		
		return "plain-login";
	}
}
