void main() {
  List<int> numbers = [];
  print(numbers);
  List<String> fruits = ["Banana", 'apple', 'Cherry'];
  print(fruits);
  List<int> numbers1 = List.filled(5, 0);
  print(numbers1);

  // akses element
  print(fruits[0]);

  // modifikasi
  fruits[1] = "Anggur";
  print(fruits);

  // menambah
  fruits.insert(1, 'Blackberry');
  print(fruits);

  // menghapus
  fruits.remove('Blackberry');
  print(fruits);

  // iterasi
  for (var fruit in fruits) {
    print(fruit);
  }

  // menjumlahkan element
  List<int> numbers2 = [1, 2, 3, 4, 5];
  int sum = numbers2.reduce((a, b) => a + b);
  print(sum);

  // mencari element
  bool hasApple = fruits.contains('Apple');
  print(hasApple);

  // mengurutkan element
  fruits.sort();
  print(fruits);

  // filter
  List<String> filteredFruits =
      fruits.where((fruit) => fruit.startsWith('B')).toList();
  print(filteredFruits);

  // constanta list tidak dapat diubah
  var colors = const ['Red', 'Green', 'Blue'];
  // colors.remove('Blue'); // akan error ketika dijalankan
  print(colors);

  void exampleList() {
    List<String> shoppingList = ['Milk', 'Eggs', 'Bread'];

    shoppingList.add('Butter');
    shoppingList.insert(1, 'Cheese');

    print('Shopping List : ');
    for (var item in shoppingList) {
      print(item);
    }

    shoppingList.remove('Bread');
    print('Updated Shopping List: ');
    print(shoppingList);
  }

  print("====================");
  exampleList();
}
