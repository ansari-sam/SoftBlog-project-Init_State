package com.soft.blog.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name="softblog_User")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="user_Id")
	private int userId;
	@Column(name="user_Name")
	private String Name;
	@Column(name="user_Email")
	private String Email;
	@Column(name="user_Password")
	private String Password;
	@Column(name="user_Gender")
	private String Gender;
	@Column(name="user_About")
	private String About;
	@Column(name="user_AddedDate")
	@Temporal(TemporalType.TIMESTAMP)
	private Date addedDate;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(int userId, String name, String email, String password, String gender, String about, Date addedDate) {
		super();
		this.userId = userId;
		Name = name;
		Email = email;
		Password = password;
		Gender = gender;
		About = about;
		this.addedDate = addedDate;
	}
	public User(String name, String email, String password, String gender, String about, Date addedDate) {
		super();
		Name = name;
		Email = email;
		Password = password;
		Gender = gender;
		About = about;
		this.addedDate = addedDate;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getAbout() {
		return About;
	}
	public void setAbout(String about) {
		About = about;
	}
	public Date getAddedDate() {
		return addedDate;
	}
	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
}
