/**
 * 
 */
package org.melon.spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.melon.spring.domain.Authority;

/**
 * @author ZhouWenLong
 *
 */
public interface AuthorityRepository extends JpaRepository<Authority, String> {

}
