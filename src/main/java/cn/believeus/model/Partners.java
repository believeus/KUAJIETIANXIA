package cn.believeus.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
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
	private String address;//公司地址
	private String legalMan;//公司法人
	private String regCapital;//注册资本
	private String companyTye;//公司类型
	private String bizScope;//经营范围
	private String introduction;//介绍
	private Industry industry;//所属产业
	private String img1;
	private String img2;
	private String img3;
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
	@Lob
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
	
	@OneToMany(mappedBy="partners",cascade=CascadeType.ALL)
	public List<Product> getProducts() {
		return products;
	}
	public void setProducts(List<Product> products) {
		this.products = products;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getLegalMan() {
		return legalMan;
	}
	public void setLegalMan(String legalMan) {
		this.legalMan = legalMan;
	}
	public String getRegCapital() {
		return regCapital;
	}
	public void setRegCapital(String regCapital) {
		this.regCapital = regCapital;
	}
	public String getCompanyTye() {
		return companyTye;
	}
	public void setCompanyTye(String companyTye) {
		this.companyTye = companyTye;
	}
	@Lob
	public String getBizScope() {
		return bizScope;
	}
	public void setBizScope(String bizScope) {
		this.bizScope = bizScope;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	public String getImg3() {
		return img3;
	}
	public void setImg3(String img3) {
		this.img3 = img3;
	}
}
