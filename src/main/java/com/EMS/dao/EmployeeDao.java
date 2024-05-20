package com.EMS.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.EMS.dto.Employee;

public class EmployeeDao {
	EntityManagerFactory factory = Persistence.createEntityManagerFactory("ems");
	EntityManager manager = factory.createEntityManager();
	EntityTransaction transaction = manager.getTransaction();

	public void saveEmployee(Employee employee) {
		transaction.begin();
		manager.persist(employee);
		transaction.commit();
	}

	public Employee findEmployeeById(int id) {
		return manager.find(Employee.class, id);
	}

	public List<Employee> findEmployees() {
		return manager.createQuery("from Employee e order by id").getResultList();
	}

	public void updateEmployee(Employee employee) {
		transaction.begin();
		manager.merge(employee);
		transaction.commit();
	}

	public void removeEmployees(Employee employee) {
		transaction.begin();
		manager.remove(employee);
		transaction.commit();

	}
	
	public Employee findEmployeeByEmail(String email) {
		Query query = manager.createQuery("from Employee e where employee_email=?1");
		query.setParameter(1, email);
		List<Employee> employees = query.getResultList();
		if (!employees.isEmpty()) {
			return employees.get(0);
		}
		return null;
	}
}
