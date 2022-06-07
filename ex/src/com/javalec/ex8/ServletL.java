package com.javalec.ex8;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class ServletL implements ServletContextListener {

	   public void contextInitialized(ServletContextEvent sce) {
		   System.out.println("contextInitialized");
	   }
	   
	   public void contextDestroyed(ServletContextEvent sce) {
		   System.out.println("contextDestroyed");
	   }
}