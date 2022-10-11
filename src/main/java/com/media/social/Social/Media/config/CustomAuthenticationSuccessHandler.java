package com.media.social.Social.Media.config;

import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.repository.UserRepository;
import com.media.social.Social.Media.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Component
public class CustomAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler {


    @Autowired
    UserServiceImpl userService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request,
                                        HttpServletResponse response,
                                        Authentication authentication) throws IOException, ServletException {
        System.out.println("----- Authentication Success-----" + authentication.getName());

        User user = userService.findByEmail(authentication.getName());
        HttpSession session = request.getSession();
        session.setAttribute("user",user);

        System.out.println("User email from onAuthenticationSuccess : "+session.getAttribute("email") );

        if (session != null) {
            String redirectUrl = (String) session.getAttribute("url_prior_login");

            if (redirectUrl != null) {
                session.removeAttribute("url_prior_login");
                getRedirectStrategy().sendRedirect(request, response, redirectUrl);
            } else {
                super.onAuthenticationSuccess(request, response, authentication);
            }
        } else {
            super.onAuthenticationSuccess(request, response, authentication);
        }

        System.out.println("onAuthenticationSucces method visited");

    }
}
