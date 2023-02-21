#!/usr/bin/env python

from Person import Person

class Employee(Person):

  def __init__(self, firstName, lastName, age, id, title):
    super().__init__(firstName, lastName, age)
    self._id    = id
    self._title = title

  def __repr__(self) -> str:
    return f"{type(self).__name__}(firstName={repr(self._firstName)}, id={repr(self._id)}, title={repr(self._title)})"

  # Override helper function
  def getFirstName(self):
    # This is child class function.
    print("This is child class helper function")
    return f"The Amazing {self._firstName}"

  # Add more methods
  def setLastName(self, lastName):
    if lastName:
      self._lastName = lastName 
    return self._lastName

  def getLastName(self):
    return self._lastName

