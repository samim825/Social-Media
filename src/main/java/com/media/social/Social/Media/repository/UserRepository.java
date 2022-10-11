package com.media.social.Social.Media.repository;

import com.media.social.Social.Media.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, String> {

    User findByEmail(String email);
}
