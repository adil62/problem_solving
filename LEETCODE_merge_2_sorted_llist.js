/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 *
 * @param  {ListNode} list1
 * @param  {ListNode} list2
 * @return {ListNode}
 */
var mergeTwoLists = function (list1, list2) {
  let llist1 = createLinkedListFromArr(list1);
  let llist2 = createLinkedListFromArr(list2);
  let newllist = new LinkedList();
  let listCombinedSize = llist1.size + llist2.size;

  while (
    newllist.size !== listCombinedSize &&
    (llist1.next !== null ||
      llist2.next !== null ||
      llist1.size === 0 ||
      llist2.size === 0)
  ) {
    console.log("looping..");
    let llist1Item = llist1.getAt(1);
    let llist2Item = llist2.getAt(1);

    if (
      (llist1Item !== null && llist1Item > llist2Item) ||
      llist2Item === null
    ) {
      newllist.append(llist2Item);
      llist2.removeByIndex(0);
    } else if (
      (llist2Item !== null && llist2Item > llist1Item) ||
      llist1Item === null
    ) {
      newllist.append(llist1Item);
      llist1.removeByIndex(0);
    } else if (
      llist1Item !== null &&
      llist2Item !== null &&
      llist1Item === llist2Item
    ) {
      newllist.append(llist2Item);
      newllist.append(llist1Item);
      llist2.removeByIndex(0);
      llist1.removeByIndex(0);
    }

    // console.log("newllist", newllist);
  }

  return newllist.head;
};

function createLinkedListFromArr(list) {
  let llist = new LinkedList();

  for (let i = 0; i < list.length; i++) {
    llist.append(list[i]);
  }

  return llist;
}

class ListNode {
  constructor(element) {
    this.val = element;
    this.next = null;
  }
}

class LinkedList {
  constructor(node) {
    this.head = null;
    this.size = 0;
  }

  insertAt(pos) {}

  getAt(pos) {
    if (pos === 1) {
      return this.head ? this.head.val : null;
    }

    if (pos > this.size) {
      return null;
    }

    let currentNode = this.head;
    let itrCount = 1;

    while (currentNode.next !== null) {
      if (pos === itrCount) {
        return currentNode.val;
      }

      currentNode = currentNode.next;
    }

    return null;
  }

  removeByIndex(index) {
    let current = this.head;
    let currentPrev = null;

    if (index === 0) {
      this.size = --this.size;
      this.head = this.head.next;
      return;
    }

    let itrCount = 0;
    while (current.next !== null) {
      if (itrCount === index) {
        break;
      }
      currentPrev = current;
      current = current.next;
      itrCount++;
    }

    currentPrev.next = current.next;
  }

  append(element) {
    let node = new ListNode(element);

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
}

let res = mergeTwoLists([1, 2, 4], [1, 3, 4]);

console.log(res)