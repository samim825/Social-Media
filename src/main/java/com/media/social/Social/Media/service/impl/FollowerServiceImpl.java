package com.media.social.Social.Media.service.impl;

import com.media.social.Social.Media.model.Follower;
import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.repository.FollowerRepository;
import com.media.social.Social.Media.service.FollowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.List;

@Service
public class FollowerServiceImpl implements FollowerService {

    @Autowired
    private FollowerRepository followerRepository;

    @Override
    public void save(String id, HttpSession session) {
        User session_user = (User) session.getAttribute("user");

        Follower addFollower =  new Follower();
        List<Follower> existingFollower = session_user.getFollowers();

        addFollower.setFollowerId(id);
        addFollower.setFollow_user(session_user);
        addFollower.setFollowing_date(new Date());
        addFollower.setEnabled(true);

        existingFollower.add(addFollower);
        session_user.setFollowers(existingFollower);

        followerRepository.save(addFollower);
    }

    @Override
    public void deleteById(String id, HttpSession session) {
        List<Follower> allFollower = followerRepository.findByFollowerId(id);
        User session_user = (User) session.getAttribute("user");

        Follower deleteFollower = new Follower();

        List<Follower> existingFollower = session_user.getFollowers();

        for(Follower follow : existingFollower) {
            if(id.equals(follow.getFollowerId())) {
                deleteFollower = follow;
            }
        }

        existingFollower.remove(deleteFollower);

        session_user.setFollowers(existingFollower);
        followerRepository.deleteFollowerById(deleteFollower.getId());
    }
}