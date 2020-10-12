package com.controller;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.*;
import com.pojo.*;
@WebServlet("/DeleteBook")
public class DeleteBook extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String callno=request.getParameter("callno");
		BLManager bl=new BLManager();
		EBook e=new EBook();
		e.setCallno(callno);
		bl.deleteEBook(e);
	
		response.sendRedirect("ViewBook.jsp");
	}
}
