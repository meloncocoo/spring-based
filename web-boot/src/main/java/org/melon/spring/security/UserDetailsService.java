package org.melon.spring.security;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import org.melon.spring.domain.User;
import org.melon.spring.repository.UserRepository;

@Component("userDetailsService")
public class UserDetailsService implements org.springframework.security.core.userdetails.UserDetailsService {

	private final Logger log = LoggerFactory.getLogger(UserDetailsService.class);
	
	@Autowired
	private UserRepository userRepository;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
		log.debug("Authentication {}", login);
		String lowercaseLogin = login.toLowerCase();
		Optional<User> userFromDatabase = userRepository.findOneByLogin(lowercaseLogin);
		
		return userFromDatabase.map(user -> {
			if (!user.isActivated()) {
				throw new UserNotActivatedException("User " + lowercaseLogin + " was not activated");
			}
            List<GrantedAuthority> grantedAuthorities = user.getAuthorities().stream()
                    .map(authority -> new SimpleGrantedAuthority(authority.getName()))
                    .collect(Collectors.toList());
			return new org.springframework.security.core.userdetails.User(lowercaseLogin, 
					user.getPassword(), grantedAuthorities);
		}).orElseThrow(() -> new UsernameNotFoundException("User " + lowercaseLogin + " was not found in the database"));
	}

}
