package com.soft.blog.helper;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class HibernateSession {
	public static Session session;
	
	public static Session getSession() {
		Configuration cfg=new AnnotationConfiguration();
		cfg.configure("hibernate.cfg.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		session=sf.openSession();
		return session;
	}
	
	public void closeSession() {
		if(session!=null) {
			session.close();
		}
	}
}
