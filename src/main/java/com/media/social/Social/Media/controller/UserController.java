package com.media.social.Social.Media.controller;

import com.media.social.Social.Media.model.Follower;
import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.service.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Slf4j
@Controller
@RequiredArgsConstructor
public class UserController {

    @Autowired
    private final UserService userService;

    private final String DEFAULT_IMAGE_PATH = "/home/dsi/Documents/asset/default_image.jpg";

    @PostMapping("/registration")
    public ModelAndView addUser(User user){

        //log.info("Add new user {} ",user.toString());
        user.setImage(DEFAULT_IMAGE_PATH);

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


    @GetMapping("/userlist")
    public ModelAndView userListPage(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();

        List<User> allUser = userService.getAllUser();
        User user = (User) session.getAttribute("user");

        List<User> existingFollower = new ArrayList<>();

        for (User user1 : allUser) {
            boolean flag = false;
            if(user.getId().equals(user1.getId())) flag = true;
            for (Follower follow : user.getFollowers()) {
                if(user1.getId().equals(follow.getFollowerId())) flag = true;
            }
            if (flag == false) existingFollower.add(user1);
        }

        modelAndView.addObject("existingFollower", existingFollower);
        modelAndView.addObject("user",user);


        modelAndView.setViewName("userlist");
        return modelAndView;

    }

    @GetMapping("/friends")
    public ModelAndView followerListPage(HttpSession session){
        ModelAndView modelAndView = new ModelAndView();

        User user = (User) session.getAttribute("user");

        List<Follower> followers = user.getFollowers();

        List<User> followingUser = new ArrayList<>();

        for(Follower follow : followers) {
            User user1 = userService.findById(follow.getFollowerId());
            if(user.getId().equals(user1.getId())) continue;
            followingUser.add(user1);
        }

        modelAndView.addObject("followingUser", followingUser);
        modelAndView.addObject("user",user);

        modelAndView.setViewName("friends");
        return modelAndView;

    }
}
