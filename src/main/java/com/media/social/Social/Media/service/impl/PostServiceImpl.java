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
import java.util.Set;

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

        //System.out.println(post.toString());
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

    @Override
    public void findByPostId(String id, HttpSession session) {
        User user = (User) session.getAttribute("user");
        Post post = postRepository.findById(id).get();

        Set<String> likes = post.getTotalLike();

        Boolean flag = false;
        for(String like : likes) {
            if(user.getId().equals(like)) flag = true;
        }

        if(flag) {
            likes.remove(user.getId());
        }
        else {
            likes.add(user.getId());
        }

        post.setTotalLike(likes);
        postRepository.save(post);
    }
}
