package com.media.social.Social.Media.controller;


import com.media.social.Social.Media.model.Follower;
import com.media.social.Social.Media.model.Post;
import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.service.PostService;
import org.springframework.aop.scope.ScopedProxyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Set;

@Controller
@RequestMapping("/api/post")
public class PostController {

    @Autowired
    PostService postService;


    @PostMapping
    public String addPost(Post post, HttpSession session){

        System.out.println("Add post controller method visited");
        postService.save(post, session);

        return "redirect:/";
    }

    @PostMapping("/edit")
    public String updatePost(Post post){

        Post post1 = postService.findById(post.getId()).get();
        post1.setContent(post.getContent());
        postService.update(post1);

        return "redirect:/";
    }

    @ResponseBody
    @GetMapping("/id/{id}")
    public Optional<Post> getById(@PathVariable String id){
        return postService.findById(id);
    }

    @GetMapping
    public List<Post> findAllPost(){
        return (List<Post>) postService.findAll();
    }

    @ResponseBody
    @DeleteMapping("/id/{id}")
    public void deletePost(@PathVariable String id){
        postService.deleteById(id);
    }

    @GetMapping("/like/{id}")
    public String like(@PathVariable String id, HttpSession session){
        postService.findByPostId(id, session);

        return "redirect:/profile";
    }

}
