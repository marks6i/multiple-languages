#!/usr/bin/env node

const Employee = require('./Employee.js');

let object = new Employee("Mohammad", "Saleem", 32, 37, "Programmer");

let firstName = object.getFirstName();

console.log('Before Setting First Name is : %s', firstName);

// Now Set first name using helper function.
object.setFirstName("Pete")

// Now get first name set by helper function.
firstName = object.getFirstName();
console.log('After Setting First Name is : %s', firstName);

fullName = object.fullName();
console.log('Full Name is %s', fullName);

console.log('Exiting 02_employee.js');