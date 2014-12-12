package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 集团文化
 */
@Entity
@Table
public class Culture extends TbaseEntity {

	private static final long serialVersionUID = -5743797339215834848L;
	private String path;//图片路径
	private String introduction;//介绍
	private String content;//内容
	
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
