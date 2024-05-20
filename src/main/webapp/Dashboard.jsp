<%@page import="java.util.Iterator"%>
<%@page import="com.EMS.dto.Employee"%>
<%@page import="java.util.List"%>
<%@page import="com.EMS.dao.EmployeeDao"%>
<%@page import="javax.persistence.EntityTransaction"%>
<%@page import="javax.persistence.EntityManager"%>
<%@page import="javax.persistence.Persistence"%>
<%@page import="javax.persistence.EntityManagerFactory"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Dash Board</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<style type="text/css">
#btn{
margin:30px;
}
</style>
</head>
<body>

	<table class="table table-sm">
		<tr>
			<th scope="col">S.no</th>
			<th scope="col">ID</th>
			<th scope="col">Name</th>
			<th scope="col">Email</th>
			<th scope="col">Password</th>
			<th scope="col">DOB</th>
			<th scope="col">Gender</th>
			<th scope="col">MOB</th>
			<th scope="col">DOJ</th>
			<th scope="col">Update</th>
			<th scope="col">Delete</th>
		</tr>
<%EmployeeDao dao = new EmployeeDao();
List<Employee> employees=dao.findEmployees();
int i = 1;
for(Employee emp:employees){
%>
<tr>
<td scope="row"><%=i++%></td>
<td><%=emp.getId() %></td>
<td><%=emp.getName() %></td>
<td><%=emp.getEmail() %></td>
<td><%=emp.getPassword()%></td>
<td><%=emp.getDob()%></td>
<td><%=emp.getGender() %></td>
<td><%=emp.getMob()%></td>
<td><%=emp.getDoj() %></td>
<td><a href="EditEmployee.jsp?id=<%=emp.getId()  %>"><button>Edit</button></a></td>
<td><a href="Delete?id=<%=emp.getId()  %>"><button>Delete</button></a></td>
</tr>
<%} %>
	</table>
	<a href="Logout"><button id="btn">Logout</button></a>
</body>
</html>