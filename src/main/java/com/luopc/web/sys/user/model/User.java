package com.luopc.web.sys.user.model;

import java.util.Date;

/**
 * @author gacl users表所对应的实体类
 */
public class User {

	private String uuid;
	private String name;
	private String sex;
	private int age;
	private Date birthday;

	public String getUuid() {
		return uuid;
	}

	public void setUuid(String uuid) {
		this.uuid = uuid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	@Override
	public String toString() {
		return "User [id=" + uuid + ", name=" + name + ", age=" + age + "]";
	}
}