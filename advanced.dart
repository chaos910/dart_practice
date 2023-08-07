void main() {
  test();
}

class Cat {
  final String name;
  Cat(this.name);
}

void test() {
  final meow = Cat('Fluffers');
  print(meow.name);
  meow.run();
  final foo = Person('Foo', 'Bar');
  print(foo.fullName);
}

class Person {
  final String firstName;
  final String lastName;
  Person(this.firstName, this.lastName);
}

extension FullName on Person {
  String get fullName => "$firstName $lastName";
}

// Extentions
// Extentions allow you to extend the functionalites in a previously written class by getting already defined functions and variables inside a class
// You can implement the functionalities of the extention method inside the instances of the original classes
extension Run on Cat {
  void run() {
    print('Cat $name is running');
  }
}

// Future
// Used in asyncoronus functions

Future<int> heavyFutureMultiplyByTwo(int a) {
  return Future.delayed(Duration(seconds: 3), () => a * 2);
}
