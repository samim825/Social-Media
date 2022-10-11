package com.media.social.Social.Media.controller;

import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Slf4j
@Controller
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @PostMapping("/registration")
    public ModelAndView addUser(User user){

        log.info("Add new user {} ",user.toString());

        ModelAndView modelAndView = new ModelAndView();
        try{
            userService.save(user);
            String msg = "Successfully registered.";
            modelAndView.addObject("msg",msg);
            modelAndView.setViewName("login");
        } catch (Exception e){

            String msg = "Something went wrong!!!please try again";
            modelAndView.addObject("msg",msg);
            modelAndView.setViewName("registration");

            e.printStackTrace();
        }


        return modelAndView;
    }
}
