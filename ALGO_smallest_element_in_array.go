package main

import (
	"fmt"
)

func main() {
	sl := []string{"dddd", "222222", "ddhdh"}

	res := findSmallestElementFromArr(sl)

	fmt.Println(res)
}

func findSmallestElementFromArr(strs []string) int {
	smallestIndex := 0
	smallestValue := strs[0]

	for i, val := range strs {
		if len(val) < len(smallestValue) {
			smallestIndex = i
			smallestValue = val
		}
	}

	return smallestIndex
}
