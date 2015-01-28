package cn.believeus.model.app;

import javax.persistence.Entity;
import javax.persistence.Table;
import cn.believeus.model.TbaseEntity;

@Entity
@Table
public class TUser extends TbaseEntity {
	private static final long serialVersionUID = 4622679541209318034L;
	private String username;//真实姓名
	private String phone;//电话号码
	private String webxinCode;//微信号
	private String description;//单位名称
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getWebxinCode() {
		return webxinCode;
	}
	public void setWebxinCode(String webxinCode) {
		this.webxinCode = webxinCode;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}
