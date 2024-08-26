void main() {
  // sintak dasar
  var add = (int a, int b) => a + b;
  print(add(2, 3));

  // penggunaan dalam call back
  // ElevatedButton(
  //   onPressed:(){
  //     print('button pressed!');
  //   },
  //   child:Text('Press Me');
  // )

  // tanpa parameter
  var sayHello = () => print('Say Hello!');
  sayHello();

  // dalam List and map
  var numbers = [1, 2, 3, 4, 5];
  var doubledNumbers = numbers.map((number) => number * 2).toList();
  print(doubledNumbers);

  // clousure -> dapat mengakses variable diluar skope
  var multiplier = 2;
  var multipluBy = (int value) => value * multiplier;
  print(multipluBy(5));
}
