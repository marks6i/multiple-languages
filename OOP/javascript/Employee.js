#!/usr/bin/env node

const Person = require('./Person.js');

class Employee extends Person {
    _id;
    _title;

    constructor(firstName, lastName, age, id, title) {
        super(firstName, lastName, age);
        this._id = id;
        this._title = title;
    }

    // Override helper function
    getFirstName() {
        // This is child class function.
        console.log('This is child class helper function');
        return `The Amazing ${this._firstName}`;
    }

    // Add more methods
    setLastName(lastName) {
        if (lastName) {
            _lastName = lastName;
        }
        return _lastName;
    }

    getLastName() {
        return _lastName;
    }
}

module.exports = Employee;