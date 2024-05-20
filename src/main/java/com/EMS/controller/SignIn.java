package com.EMS.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.EMS.dao.EmployeeDao;
import com.EMS.dto.Employee;
import com.EMS.dto.Validate;

@WebServlet("/SignIn")
public class SignIn extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String pass = req.getParameter("pass");
		EmployeeDao dao = new EmployeeDao();
		Employee employee = dao.findEmployeeByEmail(email);
		if (employee != null && employee.getEmail().equals(email) && employee.getPassword().equals(pass)) {
			HttpSession httpSession = req.getSession();
			Validate validate = new Validate();
			validate.setUserName(email);
			validate.setPassword(pass);
			httpSession.setAttribute("userDetails", validate);
			req.getRequestDispatcher("Dashboard.jsp").include(req, resp);
		} else {
			req.getRequestDispatcher("Signin.jsp").include(req, resp);
		}
	}

}
