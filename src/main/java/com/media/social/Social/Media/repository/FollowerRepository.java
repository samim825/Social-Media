package com.media.social.Social.Media.repository;

import com.media.social.Social.Media.model.Follower;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Repository
public interface FollowerRepository extends JpaRepository<Follower, String> {
    List<Follower> findByFollowerId(String id);

    @Transactional
    @Modifying
    @Query("Delete from Follower f where f.id = ?1")
    void deleteFollowerById(String id);
}