package com.kitchen.ingredients;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {

    	@RequestMapping("/")
    public String login() {
	Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	System.out.println(auth.getPrincipal());
        return "/index";
    }

	@RequestMapping("/callback")
    public String callback() {
	System.out.println("redirecting to home page");
	return "ingredients";
    }

	@RequestMapping("/ingredients")
    public String ingridients() {
        return "ingredients";
    }

	@RequestMapping("/recipes")
	public String recipes() {
        return "recipes";
    }

	@RequestMapping("/page3")
	public String page3() {
        return "page3";
    }

	
}
