package com.media.social.Social.Media.service.impl;


import com.media.social.Social.Media.model.Post;
import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.repository.PostRepository;
import com.media.social.Social.Media.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Service
public class PostServiceImpl implements PostService {

    @Autowired
    private PostRepository postRepository;

    @Override
    public Post save(Post post, HttpSession session) {


        User user = (User) session.getAttribute("user");
//        System.out.println(user.toString());
        post.setUserId(user);
        post.setPostingDate(new Date());
        post.setTotalLike(0);

        System.out.println(post.toString());
        return postRepository.save(post);
    }

    @Override
    public Post update(Post post) {
        return postRepository.save(post);
    }

    @Override
    public Optional<Post> findById(String id) {
        return postRepository.findById(id);
    }

    @Override
    public List<Post> findAll() {
        return postRepository.findAll();
    }

    @Override
    public void deleteById(String id) {

        postRepository.deletePostById(id);
    }
}
