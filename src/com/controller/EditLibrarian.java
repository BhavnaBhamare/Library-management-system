package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.*;
import com.pojo.*;
@WebServlet("/EditLibrarian")
public class EditLibrarian extends HttpServlet {
	BLManager bl=new BLManager();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String sid=request.getParameter("id");
		int id=Integer.parseInt(sid);
		String name=request.getParameter("name");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String smobile=request.getParameter("mobile");
	
		ELibrarian bean=new ELibrarian(name, email, password, smobile);
		bl.updateLibrarian(bean);
		response.sendRedirect("ViewLibrarian.jsp");
	}

}
