import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_simple/counter.dart';

void main() {
  group('Counter', () {
    test('value should start at 0', () {
      expect(Counter().value, 0);
    });

    test('Counter value should be incremented', () {
      final counter = Counter();

      counter.countUp();

      expect(counter.value, 1);
    });

    test('Counter value should be incremented', () {
      final counter = Counter();

      counter.countDown();

      expect(counter.value, -1);
    });

    test('reset 누르면 0 되어야 함', () {
      final counter = Counter();

      counter.countDown();
      counter.countDown();
      counter.countDown();

      counter.clear();

      expect(Counter().value, 0);
    });
  });
}