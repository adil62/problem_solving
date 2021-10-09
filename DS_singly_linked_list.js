/**
 * SINGLY LINKED LIST
 *
 *
 * Pros: efficient insertion or removal from arbitrary element references
 * Cons: Faster access, such as random access, is not feasible
 *
 * Time complexity-
 * Access: O(n)
 * Search: O(n)
 * Insertion: O(1)
 * Deletion:O(n)
 *
 * Space compleity - O(n)
 */

class Node {
  constructor(element) {
    this.data = element;
    this.next = null;
  }
}

class LinkedList {
  constructor(node) {
    this.head = null;
    this.size = 0;
  }

  add(element) {
    let node = new Node(element);

    if (this.head === null) {
      this.head = node;
    } else {
      let currentNode = this.head;
      // iterate to end of the list and append
      while (currentNode.next !== null) {
        currentNode = currentNode.next;
      }

      currentNode.next = node;
    }

    this.size++;
  }

  contains(element) {
    let current = this.head;

    if (current.data === element) return current;

    while (current.next !== null) {
      current = current.next;
      if (current.data === element) return current;
    }

    return false;
  }

  removeByIndex(index) {
    let current = this.head;

    if (index === 0) {
      this.size = 0;
      this.head = null;
      return;
    }

    for (let i = 0; i < this.size; i++) {
      if (index - 1 === i) {
        if (index === this.size - 1) {
          current.next = null;
        } else {
          let nodeAfterTheDeletingElement = current.next.next;
          current.next = nodeAfterTheDeletingElement;
        }

        this.size--;
      }
      current = current.next;
    }
  }
}

let list = new LinkedList();
list.add(1);
list.add(2);
list.removeByIndex(0);
