package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pojo.*;
import com.model.BLManager;

@WebServlet("/IssueBook")
public class IssueBook extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String callno=request.getParameter("callno");
		//System.out.println(callno);
		String studentid=request.getParameter("studentid");
		int id=Integer.parseInt(studentid);
		String studentname=request.getParameter("studentname");
		String studentmobile=request.getParameter("studentmobile");
		
		
		EIssuebook bean=new EIssuebook();
		bean.setCallno(callno);
		bean.setStudentid(id);
		bean.setStudentname(studentname);
		bean.setStudentmobile(studentmobile);
		int i=BLManager.issueBook(bean);
	
		if(i>0){
			out.print("<script type=\"text/javascript\">");
	        out.print("alert('Book issued successfully');");
	   		out.print("location='ViewIssuedBook.jsp';");
	   		out.print("</script>");
	   			
			
		}
		else{
			    out.print("<script type=\"text/javascript\">");
			    out.print("alert('unable to issued book');");
		   		out.print("location='issuebookform.jsp';");
		   		out.print("</script>");
		}
		
		
		out.close();
	}

}
