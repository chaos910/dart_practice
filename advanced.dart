void main() {
  test();
}

class Cat {
  final String name;
  Cat(this.name);
}

void test() async {
  final meow = Cat('Fluffers');
  print(meow.name);
  meow.run();
  final foo = Person('Foo', 'Bar');
  print(foo.fullName);

  final result = await heavyFutureMultiplyByTwo(
      10); //await keyword is what fetch the data from a asynchronous functions
  print(result);

  //For streams 'await for' fetches the data inisde a stream
  await for (final value in getName()) {
    print(value);
  }
  ;
  print("Stream finished successfully");

  // Generators method call
  for (final value in getNumbers()) {
    print(value);
    if (value == 2) {
      break;
    }
  }
}

class Person {
  final String firstName;
  final String lastName;
  Person(this.firstName, this.lastName);
}

// Extentions
// Extentions allow you to extend the functionalites in a previously written class by getting already defined functions and variables inside a class
// You can implement the functionalities of the extention method inside the instances of the original classes

extension Run on Cat {
  void run() {
    print('Cat $name is running');
  }
}

extension FullName on Person {
  String get fullName => "$firstName $lastName";
}

// Future
// Used in asynchronous functions

Future<int> heavyFutureMultiplyByTwo(int a) {
  return Future.delayed(Duration(seconds: 3), () => a * 2);
}

// Streams

Stream<String> getName() {
  //return Stream.value('Foo');
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return 'Foo';
  });
}

// Generators

List<int> getOneTwoThree() {
  return [1, 2, 3];
}

Iterable<List<int>> getNumbers() sync* {
  yield [1, 5];
  yield [2];
  yield [3];
}
