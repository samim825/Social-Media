package com.media.social.Social.Media.controller;

import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;

@Controller
@RequestMapping("/api/image")
@MultipartConfig
public class ImageController {

    private final String FOLDER_PATH = "/home/samimhossain/Pictures/Screenshots/";


    @Autowired
    private UserServiceImpl userService;

    @PostMapping
    public String saveImage(MultipartFile file, HttpSession session) throws IOException {






        User user = (User) session.getAttribute("user");

        String fileName = user.getId()+"."+file.getOriginalFilename()
                .substring(
                        file.getOriginalFilename().lastIndexOf(".") + 1);

        System.out.println("User id : "+user.getId());
        user.setImage(FOLDER_PATH+fileName);


        file.transferTo(new File(FOLDER_PATH+fileName));
        userService.save(user);

        return "redirect:/profile";
    }
}
