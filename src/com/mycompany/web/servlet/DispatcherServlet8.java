package com.mycompany.web.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mycompany.web.dto.Counter;

public class DispatcherServlet8 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//application 범위
		ServletContext sc = request.getServletContext();
		Counter applicationCounter = (Counter)sc.getAttribute("appCounter");
		if(applicationCounter!=null) {
			applicationCounter.setValue(applicationCounter.getValue()+1);
			System.out.println("appCounter: "+applicationCounter.getValue());
		}
		
		//session 범위
		HttpSession sess = request.getSession();
		Counter sessionCounter = (Counter)sess.getAttribute("sessCounter");
		if(sessionCounter!=null) {
			sessionCounter.setValue(sessionCounter.getValue()+1);
			System.out.println("sessCounter: "+sessionCounter.getValue());
		}
		
		//request 범위
		Counter requestCounter = (Counter)request.getAttribute("reqCounter");
		if(requestCounter!=null) {
			requestCounter.setValue(requestCounter.getValue()+1);
			System.out.println("reqCounter: "+requestCounter.getValue());
		}
		
		//forward
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/dispatcher8.jsp");
		rd.forward(request, response);
		
	}
}
