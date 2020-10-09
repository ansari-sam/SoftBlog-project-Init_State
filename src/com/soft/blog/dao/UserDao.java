package com.soft.blog.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.soft.blog.entities.User;
import com.soft.blog.helper.HibernateSession;

public class UserDao {
	
	public void saveUser(User user) {
		Session s=null;
		Transaction Tx=null;
		try {
			s=HibernateSession.getSession();
			Tx=s.beginTransaction();
			s.save(user);
			Tx.commit();
			
		} catch (Exception e) {
			e.printStackTrace();
			if(Tx!=null) {
				Tx.rollback();
				}
		}finally {
			s.close();
		}
	}
	public User getUserByEmailAndPassword(String email,String password){
		Session s=null;
		User user=null;
		try {
			s=HibernateSession.getSession();
			Query q=s.createQuery("from User where Email=:e and Password=:p");
			q.setParameter("e", email);
			q.setParameter("p", password);
			List<User> list=q.list();
			for(User u:list) {
				user=new User();
				user.setName(u.getName());
				user.setEmail(u.getEmail());
				user.setPassword(u.getPassword());
				user.setUserId(u.getUserId());
				user.setAbout(u.getAbout());
				user.setGender(u.getGender());
				user.setAddedDate(u.getAddedDate());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
				}finally {
					s.close();
				}
		return user;
		}

}
