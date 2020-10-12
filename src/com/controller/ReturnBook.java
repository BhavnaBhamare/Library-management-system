package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.model.BLManager;
@WebServlet("/ReturnBook")
public class ReturnBook extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out=response.getWriter();
		String callno=request.getParameter("callno");
		String sstudentid=request.getParameter("studentid");
		
		
		int studentid=Integer.parseInt(sstudentid);
		
		int i=BLManager.returnBook(callno,studentid);
		System.out.println(callno+" "+studentid);
		System.out.println(i);
		if(i>0){
			
		     out.print("<script type=\"text/javascript\">");
			 out.print("alert('Book returned successfully');");
			 out.print("location='ViewIssuedBook.jsp';");
			 out.print("</script>");
			 
		}else{
			 out.print("<script type=\"text/javascript\">");
			out.print("alert('Unable to return');");
			out.print("location='ViewIssuedBook.jsp';");
			out.print("</script>");
		}
		
		
	
   		
   		
		out.close();
	}

}
