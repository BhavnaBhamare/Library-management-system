package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BLManager;
import com.pojo.ELibrarian;

@WebServlet("/LibrarianLogin")
public class LibrarianLogin extends HttpServlet {
	 BLManager bl=new BLManager();
	 ELibrarian el=new ELibrarian();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		out.print("<script type=\"text/javascript\">");
	
		
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		
		
		el=bl.searchuserpass(email,password);
		
		if(el!=null){
			HttpSession session=request.getSession();
			session.setAttribute("email",email);
		response.sendRedirect("navlibrarian.html");
			
			
		}
		else{
			 out.print("alert('Username or password error');");
	      		out.print("location='index.jsp';");
	      		out.print("</script>");
		}
		
		
		
	}

}
