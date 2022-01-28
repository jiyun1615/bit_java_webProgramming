package com.test.di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class TestMain {
	public static void main(String[] args) {
		String loc = "classpath:test.xml";
		//스프링에서 제공하는 클래스
		AbstractApplicationContext context = new GenericXmlApplicationContext(loc);
		TestDAO testDao = context.getBean("TestDAOImp", TestDAOImp.class);
		System.out.println("=================");
		//TestDAO testDao = newTestDAOImp();
		//코드를 사용하지 않았음
		testDao.printMsg();
		System.out.println("=================");
	}
}
