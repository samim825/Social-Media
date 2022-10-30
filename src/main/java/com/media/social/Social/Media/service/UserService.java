package com.media.social.Social.Media.service;

import com.media.social.Social.Media.model.User;

import java.util.List;

public interface UserService {

    User save(User user);

    List<User> getAllUser();

    User findByEmail(String email);

    User findById(String followerId);
}
