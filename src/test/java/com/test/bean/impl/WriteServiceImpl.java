package com.test.bean.impl;

import com.test.bean.WriteService;

public class WriteServiceImpl implements WriteService {

	@Override
	public void write() {
		System.out.println("I write is OK!");
	}

}
