package com.test.bean.impl;

import com.test.bean.HelloService;

public class HelloServiceImpl implements HelloService {

	@Override
	public void sayHello() {
		System.out.println("Hi, ZhangSan");
	}

	@Override
	public void sayHello(String who) {
		System.out.println(who + " say : Hi, ZhangSan");
	}

}
