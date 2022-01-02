//Parent Class
class Person{
  //variable declaration
  var name , city, age ,gender, occupation, speciality;
//constructor
  Person(this.name, this.city, this.age, this.gender,
      this.occupation, this.speciality);
  // Creating a function
  void printInfo(){
    print("name: ${this.name}, gender: ${this.gender}, occupation: ${this.occupation}, city: ${this.city},  age: ${this.age}, speciality : ${this.speciality}");
  }
  personDepartment(){
    print('your department is IT');
  }
}

//Child Class
class Student extends Person{
  var isHasPhoneNumber ;
//constructor
  Student(name, city, age, gender, [occupation, speciality, this.isHasPhoneNumber]) : super(name, city, age, gender, occupation, speciality);

  @override
  personDepartment() {
    print('your department is HA');
  }
}

//Child Class
class Professor extends Person{
//constructor
  Professor(name, city, age, gender, [occupation, speciality]) : super(name, city,  age, gender, occupation, speciality);

  void myClasses()=> print(" my class is 1 info");
  // override function
  @override
  personDepartment() {
    print('your department is M');
  }
}

//main function
main(List<String> arguments) {
  // Creating object of the child class Student
  var student= new Student("Ali","Tunis",22 ,"H",);
  student.occupation="a Student";

  // Calling function
  student.printInfo();

  student.isHasPhoneNumber= false;
  print("this student is has a phone number? : ${student.isHasPhoneNumber}");

  // Creating object of the child class Professor
  var prof=new Professor("nada","tunis",26,"F", "prof","info");
  // Calling function
  prof.printInfo();
  prof.myClasses();

  //call to override function
  student.personDepartment();
  prof.personDepartment();
}
