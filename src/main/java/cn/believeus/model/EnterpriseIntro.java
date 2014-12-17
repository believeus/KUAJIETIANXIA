package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Table;

/**
 * 集团简介
 */
@Entity
@Table
public class EnterpriseIntro extends TbaseEntity {

	private static final long serialVersionUID = -5743797339215834848L;
	//0:集团简介 1:总裁致辞 2:发展历程 3:组织架构
	private String type;//简介类型
	
	private String path;//图片路径
	
	private String title;//标题
	
	private String content;//内容


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

}
