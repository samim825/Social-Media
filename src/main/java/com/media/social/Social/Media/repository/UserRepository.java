package com.media.social.Social.Media.repository;

import com.media.social.Social.Media.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;

public interface UserRepository extends JpaRepository<User, String> {

    User findByEmail(String email);
    @Transactional
    @Modifying
    @Query("Update User u SET u.image = ?1 where u.id = ?2")
    void updateImageOfUser(String path, String id);
}
