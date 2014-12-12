package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * banner 轮播图
 */
@Entity
@Table
public class Banner extends TbaseEntity {

	private static final long serialVersionUID = -5743797339215834848L;
	private String url;//链接
	private String path;//图片路径
	private String name;//名称
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
}
