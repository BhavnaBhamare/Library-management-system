package com.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.pojo.ELibrarian;
import com.model.BLManager;

@WebServlet("/EditLibrarianForm")
public class EditLibrarianForm extends HttpServlet {
	ELibrarian el=new ELibrarian();
	BLManager bl=new BLManager();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		 BLManager bl=new BLManager();
		 
		 String sid=request.getParameter("id");
			int id=Integer.parseInt(sid);
			
	     	el=bl.searchByLibId(id);
			
			HttpSession s=request.getSession();
			s.setAttribute("list",el);
			
			response.sendRedirect("EditLibrarianForm.jsp");
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		
		String lid=request.getParameter("id");
		String name=request.getParameter("name");
		String pass=request.getParameter("password");
		String email=request.getParameter("email");
		String mobile=request.getParameter("mobile");
		int i=Integer.parseInt(lid);
		
		
	     el.setId(i);
	     el.setName(name);
	     el.setPassword(pass);
	     el.setEmail(email);
	     el.setMobile(mobile);
        
	     bl.updateLibrarian(el);
     
	        out.print("<script type=\"text/javascript\">");
	        out.print("alert('Data updated successfully');");
	   		out.print("location='ViewLibrarian.jsp';");
	   		out.print("</script>");
    
	}

}
