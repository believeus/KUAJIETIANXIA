package cn.believeus.model;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table
public class Tuser extends TbaseEntity {

	private static final long serialVersionUID = -7459216849514123828L;
	private String signID;// 会员号
	private Integer prize;// 奖金
	private String parent;// 推荐人
	private List<Tuser> users = new ArrayList<Tuser>();

	public String getSignID() {
		return signID;
	}

	public void setSignID(String signID) {
		this.signID = signID;
	}

	public Integer getPrize() {
		return prize;
	}

	public void setPrize(Integer prize) {
		this.prize = prize;
	}

	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	public List<Tuser> getUsers() {
		return users;
	}

	public void setUsers(List<Tuser> users) {
		this.users = users;
	}

	public void addUser(Tuser user) {
		//
		int index = 0;
		switch (users.size()) {
		case 0:
			index = 0;
			users.add(0, user);
			break;
		case 1:
			index = 1;
			users.add(index, user);
			break;
		default:
			for (int i = 0; i < users.size(); i++) {
				//第三个开始,获取第一个的集合
				List<Tuser> userList = users.get(i).getUsers();
				if (userList.size() == 0) {
					userList.add(0, user);
					break;
				} else if (userList.size() == 1) {
					userList.add(1, user);
					break;
				}
			}
			addUser(user);
			break;
		}
	}

	public String sign() {
		String uuid = UUID.randomUUID().toString();
		String pattern = "(?<=([0-9a-z]{8}))[0-9a-z-]+";
		String unitID = uuid.replaceAll(pattern, "");
		return unitID.toUpperCase();
	}

}
