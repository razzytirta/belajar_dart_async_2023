import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Calculate Get Data");
    return "Get Data";
  });
}

void main() async {
  final asyncCache = AsyncCache<String>(Duration(seconds: 50));

  var result = await asyncCache.fetch(() => getData());
  print(result);

  var result2 = await asyncCache.fetch(() => getData());
  print(result2);
}
