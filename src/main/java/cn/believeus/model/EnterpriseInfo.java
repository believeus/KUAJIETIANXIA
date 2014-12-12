package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 企业信息
 * @author Administrator
 *
 */
@Entity
@Table
public class EnterpriseInfo extends TbaseEntity {

	private static final long serialVersionUID = -5743797339215834848L;
	private String tel;//咨询电话
	private String email;//邮箱
	private String website;//网址
	private String address;//地址
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}
