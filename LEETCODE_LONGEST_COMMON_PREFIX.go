/*
 * Write a function to find the longest common prefix string amongst an array of strings.
   If there is no common prefix, return an empty string "".

   eg:
   	Input: strs = ["flower","flow","flight"]
	Output: "fl"
*/

package main

import "fmt"

func longestCommonPrefix(strs []string) string {
	smallestElementIndex := findSmallestElementFromArr(strs)
	smallestElementLen := len(strs[smallestElementIndex])
	result := ""

	for i := 0; i < smallestElementLen; i++ {
		smallestElementString := strs[smallestElementIndex]
		smallestElementSubString := smallestElementString[:len(smallestElementString)-i]

		successFlag := 0

		for j := 0; j < len(strs); j++ {
			if j == smallestElementIndex {
				continue
			}

			otherElementString := strs[j]
			lenDiff := len(otherElementString) - smallestElementLen
			otherElementSubString := otherElementString[:len(otherElementString)-lenDiff-i]

			if smallestElementSubString == otherElementSubString {
				successFlag++
			}

			if successFlag == (len(strs) - 1) {
				result = smallestElementSubString
				break
			}
		}

		if result != "" {
			break
		}
	}

	return result
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

func main() {
	ip := []string{"flowe", "flow", "fl"}
	res := longestCommonPrefix(ip)

	fmt.Println("res")
	fmt.Println(res)
}
