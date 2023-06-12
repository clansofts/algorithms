// singly linked list node data structure
class Node<T> {
  T value;
  Node<T>? next;

  Node({required this.value, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

// to easily manage node in a list we create a linked list
class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  // finding node at a specifc index
  Node<E>? nodeAt(int index) {
    // begining with the head we check all the nodes available
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex++;
    }

    return currentNode;
  }

  // adding value at the front of the list
  // head first insertion
  void push(E value) {
    // create a new node and point to the node that used to be head
    head = Node(value: value, next: head);
    // In the case in which you’re pushing into an empty list, the new
    // node is both the head and tail of the list
    tail ??= head;
  }

  // adding value at the end of the list
  void append(E value) {
    // on empty linked list
    if (isEmpty) {
      push(value);
      return;
    }

    // on non-empty list set the next link on the tail as the new node
    tail!.next = Node(value: value);
    // since this is an append the new tail becomes the new node
    tail = tail!.next;
  }

  // adding value after a particular node in the list
  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }

    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty linked list';
    return head.toString();
  }
}

// doubly linked list node data structure
class DoublyNode<T> {
  T value;
  DoublyNode<T>? previous;
  DoublyNode<T>? next;

  DoublyNode({required this.value, this.previous, this.next});

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}
