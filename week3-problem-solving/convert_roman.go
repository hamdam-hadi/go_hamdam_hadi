package main

import "fmt"

func main() {
	fmt.Println(intToRoman(4))
	fmt.Println(intToRoman(9))
	fmt.Println(intToRoman(23))
	fmt.Println(intToRoman(2021))
	fmt.Println(intToRoman(1646))

}

func intToRoman(num int) string {
	romanNums := []struct {
		value   int
		numeral string
	}{
		{1000, "M"},
		{900, "CM"},
		{500, "D"},
		{400, "CD"},
		{100, "C"},
		{90, "XC"},
		{50, "L"},
		{40, "XL"},
		{10, "X"},
		{9, "IX"},
		{5, "V"},
		{4, "IV"},
		{1, "I"},
	}
	result := ""

	for _, rn := range romanNums {
		for num >= rn.value {
			result += rn.numeral
			num -= rn.value
		}
	}
	return result
}
