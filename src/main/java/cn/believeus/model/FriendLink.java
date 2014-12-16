package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 友情链接
 * */
@Entity
@Table
public class FriendLink extends TbaseEntity{

	private static final long serialVersionUID = 6204349080336319180L;
	private String name;
	private String url;
	private String logo;
	private String introduction;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getLogo() {
		return logo;
	}
	public void setLogo(String logo) {
		this.logo = logo;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	
}
