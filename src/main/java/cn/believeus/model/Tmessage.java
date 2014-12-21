package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;

/**
 * 留言
 * @author Administrator
 *
 */
@Entity
@Table
public class Tmessage extends TbaseEntity {

	private static final long serialVersionUID = -5743797339215834848L;
	private String username;//姓名
	private String email;//用户邮箱
	private String title;//留言标题
	private String content;//留言内容
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Lob
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
