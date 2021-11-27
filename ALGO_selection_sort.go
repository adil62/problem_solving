package main

import (
	"fmt"
)

func RemoveIndex(s []interface{}, index int) []interface{} {
	return append(s[:index], s[index+1:]...)
}

func selectionSort(arr []interface{}) []interface{} {
	var sorted []interface{}

	for i := 0; i < len(arr); i++ {
		smallest := arr[0].(int)
		smallestIndex := 0

		for j := 1; j < len(arr); j++ {
			ele := arr[j].(int)
			if ele < smallest {
				smallest = ele
				smallestIndex = j
			}
		}

		sorted = append(sorted, smallest)
		RemoveIndex(arr, smallestIndex)
	}

	return sorted
}

func main() {
	slice1 := []interface{}{1, 2111, 44, 222444, 99, 33331}
	sorted := selectionSort(slice1)

	fmt.Println(sorted)
}
