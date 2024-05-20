package com.EMS.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EMS.dao.EmployeeDao;
import com.EMS.dto.Employee;

@WebServlet("/Delete")
public class Delete extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		System.out.println(id);
		EmployeeDao dao = new EmployeeDao();
		Employee employee = dao.findEmployeeById(id);
		dao.removeEmployees(employee);
		req.getRequestDispatcher("Dashboard.jsp").include(req, resp);
	}
}
