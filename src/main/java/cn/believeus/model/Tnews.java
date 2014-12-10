package cn.believeus.model;

import javax.persistence.Entity;
import javax.persistence.Lob;
import javax.persistence.Table;

@Entity
@Table
public class Tnews extends TbaseEntity{

	private static final long serialVersionUID = 1546254968156234087L;
	
	/** 新闻*/
	private String title;
	
	private String imgPath;
	
	private String content;
	
	/**
	 * 0:最新动态 1: 2:常见问题
	 */
	private Integer type;
	
	
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	/** 1:置顶   0:非置顶   */
	private Short top;
	
	public Short getTop() {
		return top;
	}
	public void setTop(Short top) {
		this.top = top;
	}
	
	/** 新闻*/
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
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	
	
}
