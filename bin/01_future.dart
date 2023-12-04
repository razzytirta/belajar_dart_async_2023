Future<void> hello() {
  return Future.delayed(Duration(seconds: 2), () {
    print('Belajar Dart Async di Programmer Zaman Now');
  });
}

void main() {
  hello();
  print('Selesai');
}
