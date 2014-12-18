package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table
public class Honor extends TbaseEntity{

	private static final long serialVersionUID = -8287013883004981660L;
	// 图片名称
	private String name;
	// 图片路径
	private String imgpath;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
}
