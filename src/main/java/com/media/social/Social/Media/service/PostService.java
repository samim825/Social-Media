package com.media.social.Social.Media.service;


import com.media.social.Social.Media.model.Post;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Optional;

public interface PostService {

    Post save(Post post, HttpSession session);

    Post update(Post post);

    Optional<Post> findById(String id);

    List<Post> findAll();

    void deleteById(String id);
}
