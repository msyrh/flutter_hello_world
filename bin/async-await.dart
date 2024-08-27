import 'dart:ffi';

import 'package:rxdart/rxdart.dart';

// example future with error handling
Future<void> fetchUserOrder() {
  // Imagine that this function is fetching user info but encounters a bug.
  return Future.delayed(
    const Duration(seconds: 2),
    () => throw Exception('Logout failed: user ID is invalid'),
  );
}

// second example async await
Future<String> createOrderMessage1() async {
  var order = await fetchUserOrder1();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder1() =>
    // Imagine that this function is more complect and slow
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

// example using then
Future<String> one() => Future.value('from one');
Future<String> two() => Future.error('error from two');
Future<String> three() => Future.value('from three');
Future<String> four() => Future.value('from four');

void main() async {
  // future
  /*  
    - `Future` adalah objek yang mewakili hasil dari operasi yang mungkin belum selesai. Ini seperti janji yang akan dipenuhi di masa depan.
    - `Future` memiliki dua status utama: `pending` (menunggu) dan `completed` (selesai).
  */
  Future<String> fetchData() {
    return Future.delayed(Duration(seconds: 2), () => 'Data Berhasil diambil');
  }

  // print('fetchData dijalankan');

  // async
  /*  
    - Kata kunci `async` digunakan untuk mendeklarasikan fungsi yang akan mengembalikan `Future`.
    - Fungsi yang ditandai dengan `async` selalu mengembalikan `Future`. Di dalam fungsi `async`, Anda dapat menggunakan `await` untuk menunggu hasil `Future` sebelum melanjutkan eksekusi.
  */

  Future<String> fetchData1() async {
    await Future.delayed(Duration(seconds: 2));
    return 'Data berhasil diambil';
  }

  // print('fetchData1 dijalankan');

  // await
  /*
    - `await` digunakan untuk menunggu `Future` hingga selesai. Ini membuat kode di dalam fungsi `async` tampak seperti kode sinkron, meskipun secara teknis tetap asinkron.
    - `await` hanya dapat digunakan di dalam fungsi yang ditandai dengan `async`.
  */

  Future<void> printData() async {
    String data = await fetchData1();
    print(data);
  }

  // printData();

  // =================== example from official dart
  // fetchUserOrder();
  // print('Fetching user order...');

  print('Fetching user order...');
  print(await createOrderMessage1());

  // example using then and add error handling
  one()
      .then((_) => two())
      .then((_) => three())
      .then((_) => four())
      .then((value) => value.length)
      .catchError((e) {
    print('Got error : $e');
    return 42;
  }).then((value) => print('The value is $value'));

  // learn more : https://dart.dev/libraries/async/async-await
}
