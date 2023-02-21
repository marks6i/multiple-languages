class Person:

  def __init__(self, firstName, lastName, age):
    self._firstName = firstName
    self._lastName  = lastName
    self._age       = age

  def __repr__(self) -> str:
    return f"{type(self).__name__}(firstName={repr(self._firstName)}, lastName={repr(self._lastName)}, age={repr(self._age)})"

  def getFirstName(self):
    return self._firstName

  def setFirstName(self, firstName):
    self._firstName = firstName
    return self._firstName

  def fullName(self):
    return f'{self._firstName} {self._lastName}'

