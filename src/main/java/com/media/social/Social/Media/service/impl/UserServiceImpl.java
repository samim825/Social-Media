package com.media.social.Social.Media.service.impl;

import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.repository.UserRepository;
import com.media.social.Social.Media.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    @Autowired
    private final UserRepository userRepository;

    @Override
    public User save(User user) {

        return userRepository.save(user);
    }

    @Override
    public User findByEmail(String email) {
        return userRepository.findByEmail(email);
    }

    @Override
    public List<User> getAllUser() {
        return userRepository.findAll();
    }

    @Override
    public User findById(String followerId) {
        return userRepository.findById(followerId).get();
    }
}
