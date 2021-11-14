/**
 * Displays the day of week after adding/subtracting a number from a day.
 * Example : “ Monday +3” should give Thursday. “Monday -3” should give Friday.
 */

package main

import (
	"fmt"
	"strconv"
	"strings"
)

func dayOfTheWeek(dayWithDeviation string) string {
	var output int
	dayMap := map[string]int{
		"monday":    1,
		"tuesday":   2,
		"wednesday": 3,
		"thursday":  4,
		"friday":    5,
		"saturday":  6,
		"sunday":    7,
	}
	dayWithDeviationSlice := strings.Split(dayWithDeviation, " ")
	day := dayWithDeviationSlice[0]
	deviation := dayWithDeviationSlice[1]

	var deviationSign string
	var deviationNum int
	var deviationSlice []string

	if strings.Contains(deviation, "-") {
		deviationSign = "-"
		deviationSlice = strings.Split(deviation, deviationSign)
	} else {
		deviationSign = "+"
		deviationSlice = strings.Split(deviation, deviationSign)
	}

	deviationNum, _ = strconv.Atoi(deviationSlice[1])
	dayNum := dayMap[strings.ToLower(day)]

	if deviationSign == "-" {
		output = dayNum - deviationNum

		if output <= 0 {
			output += 7
		}
	} else {
		output = dayNum + deviationNum

		if output >= 7 {
			output -= 7
		}
	}

	return resolveDayName(dayMap, output)
}

func resolveDayName(dayMap map[string]int, daynum int) string {
	for key, value := range dayMap {
		if value == daynum {
			return key
		}
	}

	return ""
}

func main() {
	res := dayOfTheWeek("Monday +3")

	fmt.Println(res)
}

// if negative add 7 to the res
// if tuesday2 - 3 => -1 + 7 => 6
// if wedneday3 - 4 => -1 + 7 => 6
// if wednesday3 - 3 => 0 + 7 => 7

// if output greater than 7
// if frida5 + 3 => 8 - 7 => 1
