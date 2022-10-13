package com.media.social.Social.Media.controller;


import com.media.social.Social.Media.model.Post;
import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/api/post")
public class PostController {

    @Autowired
    PostService postService;

    @PostMapping
    public String addPost(Post post, HttpSession session){

        postService.save(post, session);

        return "redirect:/";
    }

    @PutMapping
    public Post updatePost(Post post){
        System.out.println("post edit controller visited");
        return postService.update(post);
    }

    @GetMapping("/id/{id}")
    public Optional<Post> getById(@PathVariable String id){
        return postService.findById(id);
    }

    @GetMapping
    public List<Post> findAllPost(){
        return (List<Post>) postService.findAll();
    }

    @DeleteMapping("/id/{id}")
    public void deletePost(@PathVariable String id){
        postService.deleteById(id);
    }



}
