package com.bridgelabz.springcore.Annotation.Configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class Application {
	
	 @Bean(name="myColorBean")
	    public Manager getMyColors(){
	        return new ManagerImpl();
	    }
}
