package com.EMS.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.EMS.dao.EmployeeDao;
import com.EMS.dto.Employee;

@WebServlet("/updateEmployees")
public class Update extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EmployeeDao dao = new EmployeeDao();
		Employee employee = dao.findEmployeeById(Integer.parseInt(req.getParameter("id")));
		employee.setName(req.getParameter("name"));
		employee.setEmail(req.getParameter("email"));
		employee.setPassword(req.getParameter("pass"));
		employee.setAddress(req.getParameter("address"));
		employee.setGender(req.getParameter("gender"));
		employee.setDob(Date.valueOf(req.getParameter("dob")));
		employee.setDoj(Date.valueOf(req.getParameter("doj")));
		employee.setMob(Long.parseLong(req.getParameter("mob")));
		dao.updateEmployee(employee);
		req.getRequestDispatcher("Dashboard.jsp").include(req, resp);;
	}
}
