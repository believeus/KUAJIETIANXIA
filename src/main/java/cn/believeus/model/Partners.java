package cn.believeus.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
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
	private Industry industry;
	private List<Product> products=new ArrayList<Product>();
	
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
	@ManyToOne
	@JoinColumn(name = "fk_industryId", referencedColumnName = "id")
	public Industry getIndustry() {
		return industry;
	}
	public void setIndustry(Industry industry) {
		this.industry = industry;
	}
	
	@OneToMany(mappedBy="partners",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
	
}
