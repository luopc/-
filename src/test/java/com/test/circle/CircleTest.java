package com.test.circle;

import org.junit.Test;
import org.springframework.beans.factory.BeanCurrentlyInCreationException;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CircleTest {

	@Test(expected = BeanCurrentlyInCreationException.class)
	public void test001() throws Throwable {
		try {
			new ClassPathXmlApplicationContext("spring-circle.xml");
			System.out.println("---------------------------------------");
		} catch (Exception e) {
			// 因为要在创建circle3时抛出；
			Throwable e1 = e.getCause().getCause().getCause();
			System.out.println("=======================================");
			throw e1;
		}
	}

	@Test(expected = BeanCurrentlyInCreationException.class)
	public void test002() throws Throwable {
		try {
			ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("spring-circle2.xml");
			System.out.println(ctx.getBean("circleA"));
			System.out.println("---------------------------------------");
		} catch (Exception e) {
			// 因为要在创建circle3时抛出；
			Throwable e1 = e.getCause().getCause().getCause();
			System.out.println("=======================================");
			throw e1;
		}
	}

}
