/*
	Reverse a string using recursive method.
*/
package main

import "fmt"

func getFirstChar(str string) string {
	return str[0:1]
}

func stringExcludingFirstChar(str string) string {
	return str[1:]
}

func reverseRecursive(str string) string {
	if len(str) == 1 {
		return getFirstChar(str)
	} else {
		return (reverseRecursive(stringExcludingFirstChar(str)) + getFirstChar(str))
	}
}

func main() {
	op := reverseRecursive("abcdefghijklmnopqrstuvwxyz")
	fmt.Println(op)
}
