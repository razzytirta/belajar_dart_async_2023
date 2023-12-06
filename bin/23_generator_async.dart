Stream<int> asyncNumber() async* {
  for (var i = 0; i < 10; i++) {
    yield i;
  }
}

void main() {
  asyncNumber().forEach((element) {
    print(element);
  });

  print('Done');
}
