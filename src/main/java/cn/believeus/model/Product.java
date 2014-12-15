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
	private String descption;
	// 商品图片路径
	private String imgpath;
	private Partners partners;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	public String getDescption() {
		return descption;
	}
	public void setDescption(String descption) {
		this.descption = descption;
	}
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	@ManyToOne
	@JoinColumn(name = "fk_productId", referencedColumnName = "id")
	public Partners getPartners() {
		return partners;
	}
	public void setPartners(Partners partners) {
		this.partners = partners;
	}
	
	
	
	
	

}
