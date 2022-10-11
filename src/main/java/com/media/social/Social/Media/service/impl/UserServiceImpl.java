package com.media.social.Social.Media.service.impl;

import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.repository.UserRepository;
import com.media.social.Social.Media.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {

    private final UserRepository userRepository;

    @Override
    public User save(User user) {
        return userRepository.save(user);
    }
}
