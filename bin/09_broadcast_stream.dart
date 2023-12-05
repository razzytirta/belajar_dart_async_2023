Stream<int> numbers() {
  return Stream.periodic(Duration(seconds: 2), (i) => i);
}

void main() {
  Stream<int> numbersStream = numbers();
  Stream<int> broadcastStream = numbersStream.asBroadcastStream().take(5);

  broadcastStream.listen((event) {
    print(event);
  });

  broadcastStream.listen((event) {
    print(event);
  });

  print('Done');
}
