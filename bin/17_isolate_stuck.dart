import 'dart:io';

Future<String> block() async {
  sleep(Duration(seconds: 5));
  return 'Blok';
}

void main() {
  print('Before');

  block().then((value) => print(value));

  print('Done');
}
