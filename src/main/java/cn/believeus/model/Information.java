package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 集团资讯
 */
@Entity
@Table
public class Information extends TbaseEntity {

	private static final long serialVersionUID = -5743797339215834848L;
	
	private String name;//资讯名称
	
	private String path;//图片路径
	
	private String introduction;//资讯简介
	
	private String content;//资讯内容

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
