package cn.believeus.user.prise.test;

import java.util.UUID;

import cn.believeus.model.Tuser;
import cn.believeus.service.BaseService;

public class UserprizeTest {

	private BaseService baseService;

	public static void main(String[] args) {
		Tuser root = new Tuser();

		Tuser u1 = new Tuser();
		root.addUser(u1);

		Tuser u2 = new Tuser();
		root.addUser(u2);

		Tuser u3 = new Tuser();
		root.addUser(u3);

		Tuser u4 = new Tuser();
		root.addUser(u4);

		Tuser u5 = new Tuser();
		root.addUser(u5);

		Tuser u6 = new Tuser();
		root.addUser(u6);

		Tuser u7 = new Tuser();
		root.addUser(u7);

		Tuser u8 = new Tuser();
		root.addUser(u8);
	}

	public void addUser() {

	}

}
