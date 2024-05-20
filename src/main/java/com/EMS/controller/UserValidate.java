package com.EMS.controller;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.EMS.dto.Validate;

public class UserValidate implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req  = (HttpServletRequest) request;
		HttpSession httpSession=req.getSession();
		Validate validate= (Validate)httpSession.getAttribute("userDetails");
		if (validate != null) {
			request.getRequestDispatcher("Dashboard.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("Signin.jsp").forward(request, response);
		}
		chain.doFilter(request, response);;
		
	}

	@Override
	public void destroy() {		
	}

}
