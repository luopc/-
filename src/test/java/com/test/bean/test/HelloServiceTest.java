package com.test.bean.test;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.test.bean.HelloService;
import com.test.bean.WriteService;
import com.test.bean.impl.WriteServiceImpl;

public class HelloServiceTest {

	@Test
	public void testSayHello() {
		ApplicationContext context = new ClassPathXmlApplicationContext("spring-hello.xml");
//		BeanFactory fac = context.getParentBeanFactory();
		HelloService hello1 = (HelloService) context.getBean("hello");
		hello1.sayHello();
		
		WriteService write = (WriteService) context.getBean(WriteService.class);
		write.write();
	}

}
