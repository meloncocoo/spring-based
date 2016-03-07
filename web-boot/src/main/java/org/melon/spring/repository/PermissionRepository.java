package org.melon.spring.repository;

import java.util.Optional;

import org.melon.spring.domain.Permission;
import org.melon.spring.domain.Permission.PermissionType;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PermissionRepository extends JpaRepository<Permission, Long> {
	
	Optional<Permission> findAllByType(PermissionType type);
	
}
