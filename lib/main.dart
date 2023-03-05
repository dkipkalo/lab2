mixin Greetings {
  void greetings(String message) {
    print(message);
  }
}

class Person with Greetings {
  String name;
  String surname;
  int? age;

  Person({
    this.name: "denys",
    this.surname: "kipkalo",
    this.age,
  });

  void personInfo() {
    print("my name is ${name} ${surname}. I am ${age} years old");
  }
}

void main() {
  Person personMale = Person();

  personMale.age ??= 24;
  personMale.greetings("hello");
  personMale.personInfo();
  assert(personMale.age! >= 18, "You must be 18 or older to enter.");
  print("great");

  Person personFemale = Person(
    name: "Ann",
    age: 15,
  );
  personFemale.personInfo();
  assert(personFemale.age! >= 18, "You must be 18+ to enter.");
  print("great");
}
