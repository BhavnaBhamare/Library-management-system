package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.EBook;
import com.model.*;
@WebServlet("/AddBook")
public class AddBook extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.println("<head>");
		out.println("<title>Add Book Form</title>");
		out.println("<link rel='stylesheet' href='bootstrap.min.css'/>");
		out.println("</head>");
		out.println("<body>");
		request.getRequestDispatcher("navlibrarian.html").include(request, response);
		
		out.println("<div class='container'>");
		String callno=request.getParameter("callno");
		String name=request.getParameter("name");
		String author=request.getParameter("author");
		String publisher=request.getParameter("publisher");
		String squantity=request.getParameter("quantity");
		int quantity=Integer.parseInt(squantity);
		EBook bean=new EBook();
		
		
	bean.setCallno(callno);
	bean.setAuthor(author);
	bean.setName(name);
	bean.setPublisher(publisher);
	bean.setQuantity(quantity);
	bean.setIssued(0);
		
		
		BLManager bl=new BLManager();
		bl.saveEBook(bean);
	
		out.print("<script type=\"text/javascript\">");
        out.print("alert('Data save successfully');");
   		out.print("location='addbookform.jsp';");
   		out.print("</script>");
		
		out.close();
	}

}
