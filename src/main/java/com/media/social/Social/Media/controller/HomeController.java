package com.media.social.Social.Media.controller;


import com.media.social.Social.Media.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {

    @GetMapping("/")
    public ModelAndView homePage(HttpSession session){

        ModelAndView modelAndView = new ModelAndView();

        modelAndView.addObject("user", session.getAttribute("user"));
        modelAndView.setViewName("home");
        return modelAndView;
    }

    @GetMapping("/about")
    public String aboutPage(){

        System.out.println("about page visited");
        return "about";
    }

    @GetMapping("/friends")
    public String friendsPage(){

        System.out.println("friends page visited");
        return "friends";
    }

    @GetMapping("/photos")
    public String photosPage(){

        System.out.println("photos page visited");
        return "photos";
    }

    @GetMapping("/profile")
    public String profilePage(){

        System.out.println("profile page visited");
        return "profile";
    }

    @GetMapping("/registration")
    public String registrationPage(){

        System.out.println("registration page visited");
        return "registration";
    }

    @GetMapping("/login")
    public String loginPage(){

        System.out.println("login page visited");
        return "login";
    }
}