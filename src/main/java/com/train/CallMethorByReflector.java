package com.train;


import java.lang.reflect.Method;

public class CallMethorByReflector {
	public static void main(String[] args) {
		Class<?> demo = null;
		try {
			demo = Class.forName("class3.Person");
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			// ����Person���е�sayHello����
			Method method = demo.getMethod("SayHello",String.class);
			method.invoke(demo.newInstance(), "Rollen");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
