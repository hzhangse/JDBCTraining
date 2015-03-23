package com.train;


class Demo3{ }

public class ClassDemo {
     public static void main(String[] args)
     {
    	 Class<?> demo1=null;
         Class<?> demo2=null;
         Class<?> demo3=null;
         try{
             //һ�㾡������������ʽ
             demo1=Class.forName("class3.Demo3");
         }catch(Exception e){
             e.printStackTrace();
         }
         demo2=new Demo().getClass();
         demo3=Demo.class;
          
         System.out.println("������   "+demo1.getName());
         System.out.println("������   "+demo2.getName());
         System.out.println("������   "+demo3.getName());
     }
}
