package cn.believeus.model.app;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

import cn.believeus.model.TbaseEntity;

@Entity
@Table
public class Tvariables extends TbaseEntity implements Serializable {
	
	private static final long serialVersionUID = -5458189673131928185L;
	private String name;
	private String value;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
	
	
}
