package com.media.social.Social.Media.controller;

import com.media.social.Social.Media.model.Follower;
import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.service.FollowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import javax.servlet.http.HttpSession;

@Controller
public class FollowerController {

    @Autowired
    private FollowerService followerService;

    @GetMapping("/update_follower/{id}")
    public String updateFollower(@PathVariable String id, HttpSession session){

        System.out.println("Update Follower controller method visited");
        followerService.save(id, session);

        return "redirect:/userlist";
    }

    @GetMapping("/delete_follower/{id}")
    public String deleteFollower(@PathVariable String id, HttpSession session){
        followerService.deleteById(id, session);


        return "redirect:/friends";
    }
}