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
public class SocialMediaApplication {


	public static void main(String[] args) {
		SpringApplication.run(SocialMediaApplication.class, args);
	}


}
