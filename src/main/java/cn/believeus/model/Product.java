package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class Product extends TbaseEntity{

	private static final long serialVersionUID = -8287013883004981660L;
	// 商品名称
	private String name;
	// 商品描述
	private String desc;
	// 商品图片路径
	private String imgpath;
	private Partners partner;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	@ManyToOne
	@JoinColumn(name = "fk_partnerId", referencedColumnName = "id")
	public Partners getPartner() {
		return partner;
	}
	public void setPartner(Partners partner) {
		this.partner = partner;
	}
	
	
	

}
