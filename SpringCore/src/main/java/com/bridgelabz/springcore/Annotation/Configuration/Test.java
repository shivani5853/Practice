package com.bridgelabz.springcore.Annotation.Configuration;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class Test {
	public static void main(String a[]){
        ApplicationContext context 
                        = new AnnotationConfigApplicationContext(Application.class);
        Manager color = (Manager) context.getBean("myColorBean");
        color.printColor();
    }
}
