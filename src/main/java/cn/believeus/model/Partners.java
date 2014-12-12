package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 合作伙伴
 */
@Entity
@Table
public class Partners extends TbaseEntity {

	private static final long serialVersionUID = -5743797339215834848L;
	private String logo;//图片路径
	private String name;//名称
	private String introduction;//介绍
	
	
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
}
