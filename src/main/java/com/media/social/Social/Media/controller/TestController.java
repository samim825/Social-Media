package com.media.social.Social.Media.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.view.RedirectView;

@RestController
public class TestController {

    @GetMapping("/")
    public RedirectView goHome(){

        return new RedirectView("/login");
    }
}
