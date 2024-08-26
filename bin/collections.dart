// List
List<String> fruits = ['Banana', 'Apple', 'Cherry'];

// Set
Set<int> uniqueNumbers = {1, 2, 3, 4};

// Map
Map<String, String> contactInfo = {'John': '123-45', 'Joni': '231-45'};

void main() {
  // Generic
  print('=============== Generic ====================');
  void exampleList() {
    List<String> names = ['Alis', 'Bob', 'Charlie'];
    names.add('Diana');
    print(names[0]);
  }

  void exampleSet() {
    Set<int> numbers = {1, 2, 3};
    numbers.add(4);
    numbers.add(2); // duplicated not added
    print(numbers);
  }

  void exampleMap() {
    Map<String, int> scores = {'Alice': 90, 'Bob': 85};
    scores['Charlie'] = 88;
    print(scores['Alice']);
  }

  exampleList();
  exampleSet();
  exampleMap();

  // iterable
  print('===========iterable==========');
  void iterableList() {
    List<String> fruits = ['Apple', 'Banana', 'Cherry'];

    // menggunakan for in
    for (var fruit in fruits) {
      print(fruit);
    }

    // menggunakan for each
    fruits.forEach((fruit) => print(fruit));
  }

  void iterableSet() {
    Set<int> numbers = {1, 2, 3};

    // menggunakan for in
    for (var key in numbers) {
      print(key);
    }

    // menggunakan for each
    numbers.forEach((number) => print(number));
  }

  void iterableMap() {
    Map<String, int> ages = {'Alice': 30, 'Bob': 25};

    // menggunakan key sebagai iterable
    for (var key in ages.keys) {
      print('key: $key');
    }

    // mengakses nilai sebagai iterable
    for (var value in ages.values) {
      print('value: $value');
    }

    // mengakses nilai sebagai iterable
    for (var entry in ages.entries) {
      print('Key: ${entry.key}, Value: ${entry.value}');
    }
  }

  iterableList();
  iterableSet();
  iterableMap();

  print("===============Method utama iterable===============");
  void methodIterable() {
    // forEach
    Iterable<String> fruits = ['apple', 'banana', 'cherry'];
    fruits.forEach((fruit) => print(fruit));

    // map
    Iterable<int> numbers = [1, 2, 3];
    var doubled = numbers.map((e) => e * 2);
    print(doubled.toList());

    // where untuk filter
    Iterable<int> numbers1 = [1, 2, 3, 4, 5];
    var evenNumbers = numbers1.where((n) => n % 2 == 0);
    print(evenNumbers.toList());

    // reduce untuk menggabungkan elemen koleksi menjadi satu nilai menggunakan fungsi yang diterapkan secara berulang
    Iterable<int> numbers2 = [1, 2, 3, 4];
    var sum = numbers2.reduce((value, element) => value + element);
    print(sum);
  }

  methodIterable();
}
