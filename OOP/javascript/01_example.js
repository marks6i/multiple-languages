#!/usr/bin/env node

const Person = require('./Person.js');

let object = new Person("Mohammad", "Saleem", 32);

let firstName = object.getFirstName();

console.log('Get First Name from constructor : %s\nCalling helper function to set new name', firstName);

// Now Set first name using helper function.
object.setFirstName("Pete")

// Now get first name set by helper function.
firstName = object.getFirstName();
console.log('After setting get new First Name is : %s', firstName);

fullName = object.fullName();
console.log('Full Name is %s', fullName);

console.log('Exiting 01_employee.js');