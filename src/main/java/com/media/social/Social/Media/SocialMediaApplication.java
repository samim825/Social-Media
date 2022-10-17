package com.media.social.Social.Media;

import com.media.social.Social.Media.model.Post;
import com.media.social.Social.Media.repository.PostRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

@SpringBootApplication
public class SocialMediaApplication implements CommandLineRunner {

	@Autowired
	PostRepository postRepository;

	@PersistenceContext
	EntityManager entityManager;

	public static void main(String[] args) {
		SpringApplication.run(SocialMediaApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {

//		postRepository.deleteById("7abe2f97-acb1-4f37-aba0-aaba1a8dc2a0");

//
//		Post post = postRepository.findById("e2fce8fe-040e-48f7-b3ff-a6917b1750ad").get();
//		post.setTotalLike(10);
//		postRepository.save(post);
		postRepository.deletePostById("e2fce8fe-040e-48f7-b3ff-a6917b1750ad");
	}


}
