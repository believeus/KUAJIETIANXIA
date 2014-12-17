package cn.believeus.model;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 集团产业
 */
@Entity
@Table
public class Industry extends TbaseEntity {

	private static final long serialVersionUID = -5743797339215834848L;
	
	private String name;//名称
	
	private String path;//图片路径
	
	private String introduction;//介绍
	
	private String content;//内容
	
	private List<Partners> partners=new ArrayList<Partners>();

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	@Lob
	public String getIntroduction() {
		return introduction;
	}

	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}

	@Lob
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@OneToMany(mappedBy="industry",cascade=CascadeType.ALL,fetch=FetchType.LAZY)
	public List<Partners> getPartners() {
		return partners;
	}

	public void setPartners(List<Partners> partners) {
		this.partners = partners;
	}
	
	
}
