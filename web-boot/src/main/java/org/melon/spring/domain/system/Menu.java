package org.melon.spring.domain.system;

public abstract class Menu {
	
	private String label;
	
	private String action;

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}
	
}
