package com.soft.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soft.blog.dao.UserDao;
import com.soft.blog.entities.Massage;
import com.soft.blog.entities.User;


public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			
			String email=request.getParameter("user_Email");
			String password=request.getParameter("user_Password");
			
			UserDao ud=new UserDao();
			User user=ud.getUserByEmailAndPassword(email, password);
			
			if(user!=null) {
				//login success
				HttpSession s=request.getSession();
				s.setAttribute("currentUser", user);
				response.sendRedirect("profile.jsp");
			}else {
				//error and send it to login page
				Massage m=new Massage("Invalid details, try again!!","error","alert-danger");
				HttpSession s=request.getSession();
				s.setAttribute("msg", m);
				response.sendRedirect("login_page.jsp");
			}
			
		} catch (Exception e) {
			e.printStackTrace();		}
	}

}
