import 'package:test/test.dart';

Future<String> getName() async {
  return Future.delayed(Duration(seconds: 2), () => "Razzi Tirta");
}

void main() {
  test('Future Matcher', () {
    final name = getName();
    expect(name, completion(equals("Razzi Tirta")));
  });
  test('Future Test', () async {
    final name = await getName();
    expect(name, "Razzi Tirta");
  });
}
