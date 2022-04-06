import 'dart:io';

void main() {
  /*
  const a = {1, 3};
  const b = {3, 5};
  final sumdiff = a.difference(b).union(b.difference(a));
  print(sumdiff);
  print(sumdiff.reduce((value, element) => value + element));
  
  int sum = 0;
  for (int x in sumdiff) {
    sum = sum + x;
  }
  print(sum);
  
  var person = <String, dynamic>{
    'name': 'Shaan',
    'address': 'Check-Shehzad',
    'height': 1.84
  };
  for (var item in person.keys) {
    print(item);
    print(person[item]);
  }
  for (var item in person.values) {
    print(item);
  }

  for (var item in person.entries) {
    print(item.key);
    print(item.value);
  }

  Map<String, dynamic> person1 = {
    'name': 'Rizwan',
    'address': 'Lahore',
    'height': 2
  };
  for (var item in person1.values) {
    print(item);
  }
  print(person1.keys);
  print(person1['name']);
  
  Map<String, dynamic> pizzamenu = {
    'margherita': 5.5,
    'pepperoi': 7.5,
    'vegetarian': 6.5,
  };
  double total = 0;

  List<String> order = ['margherita', 'pepperoi'];
  for (var item in order) {
    if (pizzamenu.keys.contains(item)) {
      total = total + pizzamenu[item];
    }
  }

  if (total != 0.0) {
    print(total);
  } else {
    print('no such pizza exists');
  }

  var restaurants = [
    {
      'name': 'Pizza hut',
      'cusine': 'Italian',
      'ratings': [5.0, 3.5, 4.5],
    },
    {
      'name': 'Chez Anne',
      'cusine': 'French',
      'ratings': [5.0, 4.5, 4.0],
    },
    {
      'name': 'Navaratna',
      'cusine': 'Indian',
      'ratings': [4.0, 4.5, 4.0],
    }
  ];

  for (var rest in restaurants) {
    final ratings = rest['ratings'] as List<double>;
    double sum = 0;
    for (var rat in ratings) {
      sum = sum + rat;
    }
    rest['Average score'] = sum / 3;
  }
  print(restaurants);
  
  stdout.write('Eneter the operator');
  String? op;
  double a;
  double b;

  while (op != 'm') {
    print('Enter m to exit');
    print('Enter + to add');
    print('Enter - to subtract');
    print('Enter * to multiply');
    print('Enter / to divide');
    stdout.write('Enter the operation u want ');
    op = stdin.readLineSync()!;
    if (op == '+') {
      stdout.write('Enter the first value ');
      a = double.parse(stdin.readLineSync()!);

      stdout.write('Enter the first value ');
      b = double.parse(stdin.readLineSync()!);

      print(add(a, b));
    } else if (op == '-') {
      stdout.write('Enter the first value ');
      a = double.parse(stdin.readLineSync()!);

      stdout.write('Enter the first value ');
      b = double.parse(stdin.readLineSync()!);

      print(sub(a, b));
    } else if (op == '*') {
      stdout.write('Enter the first value ');
      a = double.parse(stdin.readLineSync()!);

      stdout.write('Enter the first value ');
      b = double.parse(stdin.readLineSync()!);

      print(mul(a, b));
    } else if (op == '/') {
      stdout.write('Enter the first value ');
      a = double.parse(stdin.readLineSync()!);

      stdout.write('Enter the first value ');
      b = double.parse(stdin.readLineSync()!);

      print(div(a, b));
    } else if (op != 'm') {
      print('enter invald op');
    }
  }
  print('operation exited');
  */

  String? op;

  while (op != 'm') {
    print('Enter m to exit');
    print('Enter + to add');
    print('Enter - to subtract');
    print('Enter * to multiply');
    print('Enter / to divide');

    stdout.write('Enter the operation u want ');
    op = stdin.readLineSync()!;

    switch (op) {
      case '+':
        {
          print(add(num1(), num2()));
          break;
        }

      case '-':
        {
          print(sub(num1(), num2()));
          break;
        }

      case '*':
        {
          print(mul(num1(), num2()));
          break;
        }

      case '/':
        {
          div(num1(), num2());
          break;
        }
      default:
        {
          if (op != 'm') {
            print('invalid op');
            break;
          } else {
            break;
          }
        }
    }
  }
  print('Operation exited');
}

double add(double a, double b) {
  return a + b;
}

double sub(double a, double b) {
  return a - b;
}

double mul(double a, double b) {
  return a * b;
}

void div(double a, double b) {
  if (b == 0) {
    print('use other value then 0');
  } else {
    print(a / b);
  }
}

double num1() {
  stdout.write('Enter the first value ');
  return double.parse(stdin.readLineSync()!);
}

double num2() {
  stdout.write('Enter the second value ');
  return double.parse(stdin.readLineSync()!);
}
