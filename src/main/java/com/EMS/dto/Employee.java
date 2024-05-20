package com.EMS.dto;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.FieldDefaults;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@FieldDefaults(level = AccessLevel.PRIVATE)
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	int id;
	@Column(name = "Employee_Name")
	String name;
	@Column(name = "Employee_Email",unique = true)
	String email;
	@Column(name = "Employee_Password")
	String password;
	@Column(name="Employee_Address")
	String address;
	@Column(name="Employee_DOB")
	Date dob;
	@Column(name = "Employee_Gender")
	String gender;
	@Column(name = "Employee_Mobile")
	long mob;
	@Column(name = "Employee_DOJ")
	Date doj;
}
