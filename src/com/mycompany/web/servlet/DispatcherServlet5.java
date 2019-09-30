package com.mycompany.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DispatcherServlet5 extends HttpServlet{
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		request.setAttribute("name", name);
		request.setAttribute("age", age);
		
//		ServletContext servletContext = request.getServletContext();
//		servletContext.setAttribute("name", name);
//		servletContext.setAttribute("age", age);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher5.jsp");
		rd.forward(request, response);
	}
}
