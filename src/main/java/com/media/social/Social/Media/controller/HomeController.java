package com.media.social.Social.Media.controller;


import com.media.social.Social.Media.helper.DateFormatter;
import com.media.social.Social.Media.model.Post;
import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private UserServiceImpl userService;
    @GetMapping({"/","/home"})
    public ModelAndView homePage(HttpSession session){

        System.out.println("Home method visited..");

        ModelAndView modelAndView = getPostList(session);

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
    public ModelAndView profilePage(HttpSession session){

        System.out.println("Home method visited.");

        ModelAndView modelAndView = getPostList(session);

        modelAndView.setViewName("profile");
        return modelAndView;
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

    private ModelAndView getPostList(HttpSession session){

        ModelAndView modelAndView = new ModelAndView();

        User user = (User) session.getAttribute("user");
        User user1 = userService.findByEmail(user.getEmail());
        List<Post> postList =  user1.getPostList();
        for(Post post : postList){
            System.out.println(post.getContent());

            Date date = new Date();
            Date date1 = post.getPostingDate();
            System.out.println(DateFormatter.findDateDifference(date, date1));
        }

        modelAndView.addObject("user", user1);
        return modelAndView;
    }
}
