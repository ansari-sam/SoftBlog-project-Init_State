package com.soft.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.soft.blog.dao.UserDao;
import com.soft.blog.entities.User;

@MultipartConfig
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();

	}

	public void init(ServletConfig config) throws ServletException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
		PrintWriter out=response.getWriter();
//		Fetch Data from Form
		String check=request.getParameter("check");
		if(check==null) {
			out.println("Box not checked");
		}else {
		String name=request.getParameter("user_name");
		String email=request.getParameter("user_email");
		String password=request.getParameter("password");
		String gender=request.getParameter("gender");
		String about=request.getParameter("user_details");
		
		User newUser=new User();
		newUser.setName(name);
		newUser.setEmail(email);
		newUser.setPassword(password);
		newUser.setGender(gender);
		newUser.setAbout(about);
		newUser.setAddedDate(new Date());
		
		//Save User info to DB
		UserDao ud=new UserDao();
		
			Thread.sleep(1000);
		
		ud.saveUser(newUser);
		out.println("done");
		}
		} catch (Exception e) {
			
			e.printStackTrace();
		}
	}

	public void destroy() {

	}

}
