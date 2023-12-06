import 'package:async/async.dart';

Future<String> getData() {
  return Future.delayed(Duration(seconds: 2), () {
    print("Calculate Get Data");
    return "Get Data";
  });
}

void main() async {
  final asyncMemoizer = AsyncMemoizer<String>();

  var result = await asyncMemoizer.runOnce(() => getData());
  print(result);

  var result2 = await asyncMemoizer.runOnce(() => getData());
  print(result2);
}
