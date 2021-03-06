package com.train;


import java.lang.reflect.Constructor;

class Person {

	public Person() {	}

	public Person(String name) {
		this.name = name;
	}

	public Person(int age) {
		this.age = age;
	}

	public Person(String name, int age) {
		this.age = age;
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public int getAge() {
		return age;
	}

	public void setName(String name)
	{
		this.name = name;
	}
	
	public String toString() {
		return "[" + this.name + "  " + this.age + "]";
	}

	public void SayHello(String val)
	{
		System.out.println(val);
	}
	
	private String name;
	private int age;
}

public class NewByReflector {
	public static void main(String[] args) {
		Class<?> demo=null;
        try{
            demo=Class.forName("class3.Person");
        }catch (Exception e) {
            e.printStackTrace();
        }
        Person per1=null;
        Person per2=null;
        Person per3=null;
        Person per4=null;
        //ȡ��ȫ���Ĺ��캯��
        Constructor<?> cons[]=demo.getConstructors();
        try{
            per1=(Person)cons[0].newInstance();
            per2=(Person)cons[1].newInstance("Rollen");
            per3=(Person)cons[2].newInstance(20);
            per4=(Person)cons[3].newInstance("Rollen",20);
            
            System.out.println(per4.getAge());
        }catch(Exception e){
            e.printStackTrace();
        }
        System.out.println(per1);
        System.out.println(per2);
        System.out.println(per3);
        System.out.println(per4);

	}

}
