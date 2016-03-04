package org.melon.spring.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import org.melon.spring.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {

	Optional<User> findOneByLogin(String lowercaseLogin);

}
