package com.media.social.Social.Media.repository;

import com.media.social.Social.Media.model.Post;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
public interface PostRepository extends JpaRepository<Post, String> {

    @Transactional
    @Modifying
    @Query("Delete from Post p where p.id = ?1")
    void deletePostById(String id);

    @Transactional
    @Modifying
    @Query("Update Post p SET p.content = ?1 where  p.id = ?2")
    void updatePostById(String content, String id);
}
