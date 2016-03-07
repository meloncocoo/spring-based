package org.melon.spring.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import javax.persistence.Id;

@Entity
@Table(name = "SYS_PERMISSION")
public class Permission extends AbstractAuditingEntity implements Serializable {

	public enum PermissionType {
		MENU
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue(strategy = GenerationType.AUTO)
	private Long Id;
	
	@Column(nullable = false)
	private PermissionType type = PermissionType.MENU;
	
	@Size(max = 50)
	@Column(length = 50, nullable = false)
	private String label;
	
	@Size(max = 250)
	@Column(length = 250)
	private String description;
	
	@Size(max = 250)
	@Column(length = 250, nullable = false)
	private String action;

	public Long getId() {
		return Id;
	}

	public void setId(Long id) {
		Id = id;
	}

	public PermissionType getType() {
		return type;
	}

	public void setType(PermissionType type) {
		this.type = type;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
}
