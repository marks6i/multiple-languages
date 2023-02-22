class Person {
    _firstName;
    _lastName;
    _age;

    constructor(firstName, lastName, age) {
        this._firstName = firstName;
        this._lastName = lastName;
        this._age = age;
    }

    getFirstName() {
        return this._firstName;
    }

    setFirstName(firstName) {
        this._firstName = firstName;
        return this._firstName;
    }

    fullName() {
        return `${this._firstName} ${this._lastName}`;
    }
}

module.exports = Person;