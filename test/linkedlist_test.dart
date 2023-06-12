import 'package:algorithms/linkedlist.dart';
import 'package:test/test.dart';

void main() {
  test('test node ...', () async {
    final node1 = Node(value: 35);
    final node2 = Node(value: 24);
    final node3 = Node(value: 15);

    node1.next = node2;
    node2.next = node3;

    print(node2);
  });

  test('test linkedlist push ...', () async {
    final list = LinkedList<int>();
    list.push(22);
    list.push(23);
    list.push(24);
    final result = list.toString();
    print(result);
    expect(result, "24 -> 23 -> 22");
  });

  test('test linkedlist append ...', () async {
    final list = LinkedList<int>();
    list.append(1);
    list.append(2);
    list.append(3);
    list.push(4);
    final result = list.toString();
    print(result);
    expect(result, "4 -> 1 -> 2 -> 3");
  });

  test('test linkedlist nodeAt ...', () async {
    final list = LinkedList<int>();
    list.append(1);
    list.append(2);
    list.append(3);
    list.push(4);
    final result = list.toString();
    print(result);
    final at = list.nodeAt(2);
    print(at.toString());
    print(at!.value);
    expect(at.value, 2);
  });

  test('test linkedlist insertAfter ...', () async {
    final list = LinkedList<int>();
    list.append(1);
    list.append(2);
    list.append(3);
    list.push(4);
    print("Before ${list.toString()}");
    final at = list.nodeAt(0);
    print(at!.value);
    list.insertAfter(at, 500);
    print("After ${list.toString()}");
    expect(list.toString(), "4 -> 500 -> 1 -> 2 -> 3");
  });
}
