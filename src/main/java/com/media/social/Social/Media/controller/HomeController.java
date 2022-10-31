package com.media.social.Social.Media.controller;


import com.media.social.Social.Media.config.UserPrincipal;
import com.media.social.Social.Media.helper.DateFormatter;
import com.media.social.Social.Media.model.Follower;
import com.media.social.Social.Media.model.Post;
import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.Base64;
import java.util.Date;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private UserServiceImpl userService;

    //@GetMapping({"/","/home"})
    //public ModelAndView homePage(HttpSession session) throws Exception {

      //  System.out.println("Home method visited..");

        //ModelAndView modelAndView = getPostList(session);

        //modelAndView.setViewName("home");
        //return modelAndView;
    //}

    @GetMapping("/about")
    public ModelAndView aboutPage(HttpSession session){

        System.out.println("about page visited");
        User user = (User) session.getAttribute("user");
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("user",user);
        modelAndView.setViewName("about");
        return modelAndView;
    }


    @GetMapping("/photos")
    public ModelAndView photosPage(HttpSession session){

        ModelAndView modelAndView = new ModelAndView();
        User user = (User) session.getAttribute("user");
        modelAndView.addObject("user",user);
        System.out.println("photos page visited");
        modelAndView.setViewName("photos");
        return modelAndView;
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
