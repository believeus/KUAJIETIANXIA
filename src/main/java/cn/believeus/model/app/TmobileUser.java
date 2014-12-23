package cn.believeus.model.app;

import javax.persistence.Entity;
import javax.persistence.Table;
import cn.believeus.model.TbaseEntity;

@Entity
@Table
public class TmobileUser extends TbaseEntity {
	private static final long serialVersionUID = 4622679541209318034L;
	private String username;//真实姓名
	private String phone;//电话号码
	private String webxinCode;//微信号
	private String imgpath;//图片
	private String vedioURL;//视频连接地址
	private String motto;//口号
	private String description;//描述
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
	public String getImgpath() {
		return imgpath;
	}
	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}
	public String getVedioURL() {
		return vedioURL;
	}
	public void setVedioURL(String vedioURL) {
		this.vedioURL = vedioURL;
	}
	public String getMotto() {
		return motto;
	}
	public void setMotto(String motto) {
		this.motto = motto;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	

}
