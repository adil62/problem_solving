/*
 Hashmap datastructure implementation.
 uses sepearate chaining method to resolve collisions.
*/

package main

import (
	"fmt"
	"hash/fnv"
)

type any = interface{}

// Linkedlist implementation
type Node struct {
	data HashMapLlistValue
	next *Node
}

type LinkedList struct {
	size int
	head *Node
}

func createNode(value HashMapLlistValue) Node {
	node := Node{
		data: value,
	}

	return node
}

func (list *LinkedList) add(value HashMapLlistValue) {
	// fmt.Println("Adding...")

	node := createNode(value)

	if list.size == 0 {
		list.head = &node
	} else {
		curr := list.head

		for curr.next != nil {
			curr = curr.next
		}

		curr.next = &node
	}

	list.size++
}

/*
	Remove element from end of the list
*/

func (list *LinkedList) pop() {
	// fmt.Println("Deleting...")

	curr := list.head
	for i := 0; i < list.size-2; i++ {
		curr = curr.next
	}

	curr.next = nil
	list.size--
}

func (list *LinkedList) findByPosition(position int) *Node {
	// fmt.Println("Finding...")

	curr := list.head

	for i := 0; i < list.size; i++ {
		if i == position-2 {
			return curr
		}
		curr = curr.next
	}

	return nil
}

func (list *LinkedList) printList() {
	// fmt.Println("Printing...")

	curr := list.head
	// fmt.Println(curr)

	for curr.next != nil {
		curr = curr.next
		// fmt.Println(curr)
	}
}

func (list *LinkedList) removeByIndex(index int) {
	curr := list.head

	if index < 0 || index > list.size-1 {
		return
	}

	for i := 0; i < list.size-1; i++ {
		if index == 0 {
			list.head = curr.next
			break
		} else if index == list.size-1 && i == index-1 {
			curr.next = nil
			break
		} else if i == index-1 {
			curr.next = curr.next.next
			break
		}

		curr = curr.next
	}
	list.size--
}

/**   HASHMAP  **/

type HashMap struct {
	itemSize      int
	internalSlice []*LinkedList
}

//  For now adding only string value.
func (hashMap *HashMap) hashCode(s string) int {
	h := fnv.New32a()
	h.Write([]byte(s))

	return int(h.Sum32()) % len(hashMap.internalSlice)
}

// Resize
func (hashMap *HashMap) resizeTheArray() {
	fmt.Println("RESIZING...!")

	// create new array double the size. how ?
	internalSliceCopy := hashMap.internalSlice
	hashMap.internalSlice = make([]*LinkedList, len(internalSliceCopy)*2)
	copy(hashMap.internalSlice, internalSliceCopy)
}

// Get load factor
func (hashMap *HashMap) getLoadFactor() float32 {
	loadFactor := float32(hashMap.itemSize) / float32(len(hashMap.internalSlice))

	return float32(loadFactor)
}

type HashMapLlistValue struct {
	key   string
	value interface{}
}

// Used to add .
func (hashMap *HashMap) add(key string, value string) {
	if hashMap.getLoadFactor() > 0.7 {
		hashMap.resizeTheArray()
	}
	index := hashMap.hashCode(key)
	llist := LinkedList{}
	llist.add(HashMapLlistValue{key, value})
	hashMap.internalSlice[index] = &llist
	hashMap.itemSize++

	hashMap.internalSlice[index].printList()
	// fmt.Printf("%#v", hashMap.internalSlice[index])
}

func (hashMap *HashMap) Init() {
	slice := make([]*LinkedList, 10)
	hashMap.internalSlice = slice
}

func (hashMap *HashMap) findKeyInLlist(pos int, key string) interface{} {
	list := hashMap.internalSlice[pos]

	if list == nil {
		return nil
	}

	curr := list.head

	for i := 0; i < list.size; i++ {
		// fmt.Println("Node data", curr.data.key)

		if curr.data.key == key {
			return curr.data.value
		}
		curr = curr.next
	}

	return nil
}

// Used to get
func (hashMap *HashMap) get(key string) interface{} {
	index := hashMap.hashCode(key)
	val := hashMap.findKeyInLlist(index, key)

	return val
}

// Used to update
func (hashMap *HashMap) update(key string, value string) interface{} {
	index := hashMap.hashCode(key)
	list := hashMap.internalSlice[index]

	if list == nil {
		return nil
	}

	curr := list.head

	for i := 0; i < list.size; i++ {
		// fmt.Println("Node data", curr.data.key)

		if curr.data.key == key {
			curr.data.value = value
		}
		curr = curr.next
	}

	return nil
}

func (hashMap *HashMap) delete(key string) {
	index := hashMap.hashCode(key)
	llist := hashMap.internalSlice[index]

	curr := llist.head

	for i := 0; i < llist.size; i++ {
		if curr.data.key == key {
			// optimise
			llist.removeByIndex(i)
		}
		curr = curr.next
	}
}

func main() {
	hMap := HashMap{}
	hMap.Init()

	hMap.add("key1", "value1")
	hMap.add("key2", "value2")
	hMap.add("key3", "value3")
	hMap.add("key8", "value8")
	hMap.add("key4", "value4")
	hMap.add("key5", "value5")
	hMap.add("key6", "value6")
	hMap.add("key9", "value9")
	hMap.add("key10", "value10")

	fmt.Println("get value : ", hMap.get("key1"))

	hMap.update("key1", "Hello world")

	fmt.Println("get value after update: ", hMap.get("key1"))

	hMap.delete("key1")

	fmt.Println("get value after delete: ", hMap.get("key1"))

	fmt.Println(&hMap)
}
