package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BLManager;
import com.pojo.ELibrarian;
@WebServlet("/DeleteLibrarian")
public class DeleteLibrarian extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		BLManager bl=new BLManager();
		ELibrarian el=new ELibrarian();
		el.setId(id);
		bl.deleteLibrarian(el);
		 out.print("<script type=\"text/javascript\">");
	        out.print("alert('Data deleted successfully');");
	   		out.print("location='ViewLibrarian.jsp';");
	   		out.print("</script>");
		//response.sendRedirect("ViewLibrarian.jsp");
	}
}
