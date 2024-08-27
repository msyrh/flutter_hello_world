import 'dart:async';
import 'dart:isolate';

void main(List<String> args) {
  // fungsi yang dijalankan didalam isolate
  void _isolateEntryPoint(SendPort sendPort) {
    final receivePort = ReceivePort();
    sendPort.send(receivePort.sendPort);

    receivePort.listen((message) {
      final data = message[0] as int;
      final responsePort = message[1] as SendPort;

      // melakukan perhitungan berat
      final result = data * 2;
      responsePort.send(result);
      print('_isolateEntryPoint menerima');
    });
  }

  void startIsolate() async {
    // membuat receivePort untuk menerima pesan dari isolate
    final receivePort = ReceivePort();

    // memulai isolate baru
    await Isolate.spawn(_isolateEntryPoint, receivePort.sendPort);

    // mendapatkan sendport dari isolate baru
    final sendPort = await receivePort.first as SendPort;
    print('memulai isolate baru');

    // mengirim pesan ke isolate
    final responsePort = ReceivePort();
    sendPort.send([100, responsePort.sendPort]);
    print('startIsolate mengirim ');

    // mendapatkan hasil dari isolate
    final result = await responsePort.first;
    print('Hasil dari isolate: $result');
  }

  runZonedGuarded(() {
    // membuat dan memulai isolate baru
    startIsolate();
  }, (error, stackTrace) {
    print('Error: $error');
  });

  /* Penjelasan Contoh

    1. **`startIsolate` Function**: 
      - Membuat `ReceivePort` untuk menerima pesan dari isolate.
      - Memulai isolate baru menggunakan `Isolate.spawn`, dan mengirimkan `ReceivePort` untuk mendapatkan `SendPort` dari isolate.
      - Mengirimkan data ke isolate dan menunggu hasilnya melalui `responsePort`.

    2. **`_isolateEntryPoint` Function**:
      - Fungsi yang dijalankan di dalam isolate.
      - Menerima pesan dari `ReceivePort`, melakukan perhitungan, dan mengirim hasil kembali ke `SendPort` yang diterima dari isolate.
  */
}
