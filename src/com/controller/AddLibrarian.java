package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.ELibrarian;
//import com.model.LibrarianDao;
import com.model.*;
@WebServlet("/AddLibrarian")
public class AddLibrarian extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>Add Librarian</title>");
		out.println("<link rel='stylesheet' href='bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		
		request.getRequestDispatcher("navhome.html").include(request, response);
		out.println("<div class='container'>");
		
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String smobile=request.getParameter("mobile");
		//long mobile=Long.parseLong(smobile);
		ELibrarian bean=new ELibrarian(name,password,email, smobile);
	//	LibrarianDao.save(bean);
		BLManager bl=new BLManager();
		bl.saveELibrarian(bean);
		
		out.print("<script type=\"text/javascript\">");
        out.print("alert('Data save successfully');");
   		out.print("location='addlibrarianform.jsp';");
   		out.print("</script>");
	//	out.close();
		
		
		out.println("</div>");
		request.getRequestDispatcher("footer.html").include(request, response);
		out.close();
	}

}
