package com.test.di01;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class GetMain {

	public static void main(String[] args) {
		/*
		 * MyGetSum my = new MyGetSum (); my.setGetsum(new GetSum()); my.setA(30);
		 * my.setB(33);
		 */
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:getsum.xml");
		MyGetSum myGetSum = ctx.getBean("mygetsum", MyGetSum.class);
										//xml에서 만든 객체
		
		myGetSum.sum();
	}

}
