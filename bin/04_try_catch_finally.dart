Future<String> name(String name) {
  // return Future.value('Hello $name');

  return Future.error(Exception('Ups'));
}

void main() {
  name('Razzi')
      .then((value) => print(value))
      .catchError((error) => print('Error with message ${error.message}'))
      .whenComplete(() => print('All Done'));

  print('Done');
}
