package com.media.social.Social.Media.service;

import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

@Service
public interface FollowerService {


    void save(String id, HttpSession session);

    void deleteById(String id, HttpSession session);
}