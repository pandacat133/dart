void main() {

//STRINGS:
  String name = 'Bob';
  var job = 'Builder';
  String greeting = 'Hello ${name} the ${job}';

  print(greeting);


//LISTS:
  List fruits = ['apple','pear','banana'];

  List numbers = [1,2,3,4,5];

  List veggies = new List(4);
//  veggies.add('asparagus');
//  veggies.add('peas');
  veggies[0] = 'asparagus';
  veggies[1] = 'peas';

  print(fruits);
  print(numbers);
  print(veggies);


//MAPS:
  Map namesAndAges = {
    'Joe' : 32,
    'Bob' : 50,
    'Alice' : 25
  };

  namesAndAges['John'] = 34;


//UNIQUE OPERATORS:
  namesAndAges
    ..['Jay'] = 23
    ..['Amy'] = 12
    ..remove('bob');

  print(namesAndAges);


//CONDITIONALS:
  switch(name) {
    case 'Tom':
    case 'Bob':
      print('YO!');
      break;

    default:
      print('Hi');
  }


//LOOPS:
  for(var fruit in fruits) {
    print(fruit);
  }

//CLASSES/INHERITANCE USAGE:
  var e1 = new Employee1('John', 'Doe');
    print(e1.last);

  var e2 = new Employee2.FromId(1);
  print(e2.id);

  var a1 = new Accountant1('Amy', 'Smith');
  print(a1.first);

  //  var a2 = new Accountant2('John', 'Doe');
  //  print(a2.first);


//GENERICS:
  var genName = <String>['Joe','Bob','Tom'];
  genName.add('Billy');
}



//UNIQUE FUNCTIONS:
  //example w/o types:
  createGreeting1(name) {
    return 'Hello ' + name;
  }
    //TO RUN: print(createGreeting1('John'));

  //example w/ types (better to use types):
  String createGreeting2(String name) {
  return 'Hello ' + name;
  }
    //TO RUN: print(createGreeting2('John'));


  //example w/ optional parameters:
  String createGreeting3(String name, {String last : 'Doe'}) {
    return 'Hello $name $last';
  }
    //TO RUN: print(createGreeting3('John', last: 'Green'));

  //example w/ conditional parameters:
  String createGreeting4(String name, [String last = 'Doe']) {
    return 'Hello $name $last';
  }
    //TO RUN: print(createGreeting4('John', 'Green'));

  //example w/ aliases using typedef:
  typedef String GreeterFunction(String name);

  String meta(GreeterFunction theFunction) {
    print(theFunction('meta'));
  }
    //TO RUN: print(createGreeting2('John');
            //meta(createGreeting2);


//SHORTHAND:
  String createGreeting5(String name) => 'Hello $name';
    //TO RUN: print(createGreeting5('John');


//CLASSES:
  class Employee1 {
    String first;
    String last;

    Employee1(String first, String last) {
      this.first = first;
      this.last = last;
    }
  }

  class Employee2 {
    String first;
    String last;
    int id;

    Employee2(this.first, this.last) {
    }

    Employee2.FromId(this.id) {
    }

    void PrintName() {
      print('$first $last');
    }
  }

//INHERITANCE:
  class Accountant1 extends Employee2{
    Accountant1(String first, String last) : super(first, last) {
    }
  }

  //  class Accountant2 implements Employee2{
  //    String first;
  //    String last;
  //
  //    Accountant2(this.first, this.last) {
  //    }
  //
  //    void PrintName() {
  //    }
  //  }