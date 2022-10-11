package com.media.social.Social.Media.config;

import com.media.social.Social.Media.model.User;
import com.media.social.Social.Media.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.security.Principal;

@Service
@RequiredArgsConstructor
public class CustomUserDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {

        User user = userRepository.findByEmail(email);

//        HttpServletRequest request=null;
//        HttpSession session = request.getSession();
//        session.setAttribute("firstName",user.getFirstName());
//        session.setAttribute("lastName",user.getLastName());
//        session.setAttribute("id",user.getId());
//        session.setAttribute("email",user.getEmail());

        if(user==null) {
            throw new BadCredentialsException("Invalid E-mail or Password !!");

        }
//        else{
//            Principal principal=null;
//            HttpServletRequest request=null;
//            User user1 = userRepository.findByEmail(principal.getName());
//
//            HttpSession session = request.getSession();
//            session.setAttribute("firstName",user1.getFirstName());
//            session.setAttribute("lastName",user1.getLastName());
//            session.setAttribute("id",user1.getId());
//            session.setAttribute("email",user1.getEmail());
//        }

        return new UserPrincipal(user);
    }
}
