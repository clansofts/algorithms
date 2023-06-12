import 'package:algorithms/stacks.dart';
import 'package:test/test.dart';

void main() {
  test('test push', () {
    final stacks = Stacks<int>();
    stacks.push(1);
    stacks.push(2);
    stacks.push(3);
    stacks.push(4);
    print(stacks.toString());
    expect(stacks.peek, 4);
  });

  test('test pop', () {
    final stacks = Stacks<int>();
    stacks.push(1);
    stacks.push(2);
    stacks.push(3);
    stacks.push(4);
    print(stacks.toString());
    final popped = stacks.pop();
    print("Popped $popped\n");
    print(stacks.toString());
    expect(stacks.peek, 3);
  });

  test('test peek', () {
    final stacks = Stacks<int>();
    stacks.push(1);
    stacks.push(2);
    stacks.push(3);
    stacks.push(4);
    print(stacks.toString());
    expect(stacks.peek, 4);
  });

  test('test empty', () {
    final stacks = Stacks<int>();
    expect(true, stacks.isEmpty);
  });
}
