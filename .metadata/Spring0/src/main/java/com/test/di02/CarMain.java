package com.test.di02;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;


public class CarMain {
	public static void main(String[] args) {
		AbstractApplicationContext ctx = new GenericXmlApplicationContext("classpath:car.xml");
		Car car = ctx.getBean("kiacar", Car.class);
		// xml에서 만든 객체

		car.drive();
		
	}
}
