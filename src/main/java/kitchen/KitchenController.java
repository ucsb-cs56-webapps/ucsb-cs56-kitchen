package com.kitchen.ingredients;

import java.security.Principal;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.oauth2.client.EnableOAuth2Sso;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;


@EnableOAuth2Sso
@Controller
public class KitchenController { 

    @RequestMapping("/login")
    public String login() {
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
