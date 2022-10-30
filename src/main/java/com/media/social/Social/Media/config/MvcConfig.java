package com.media.social.Social.Media.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.resource.PathResourceResolver;

@Configuration
public class MvcConfig implements WebMvcConfigurer {
    @Value("${extern.resoures.path}")
    private String path;
    @Value("${extern.resources.Dir}")
    private String resourceDir;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {

      //  registry.addResourceHandler("/**").addResourceLocations("/home/samimhossain/Pictures/Screenshots/");
        registry.addResourceHandler( "/css/**").addResourceLocations("classpath:/static/assets/css/", "/home/samimhossain/Pictures/Screenshots/");
    }
}
