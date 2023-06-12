// Stack data structure
class Stacks<E> {
  Stacks() : _storage = [];
  final List<E> _storage;

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => !isEmpty;

  @override
  String toString() {
    return '---- Top ----\n'
        '${_storage.reversed.join('\n')}'
        '\n--------';
  }
}
