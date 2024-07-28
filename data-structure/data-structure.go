package main

import (
	"fmt"
)

func main() {
	res1 := merge([][]int{
		{1, 2, 5, 4, 3},
		{1, 2, 7, 8},
	})
	fmt.Println(res1)

	res2 := merge([][]int{
		{1, 2, 5, 4, 5},
		{7, 9, 10, 5},
	})
	fmt.Println(res2)

	res3 := merge([][]int{
		{1, 4, 5},
		{7},
	})
	fmt.Println(res3)

	res4 := merge([][]int{})
	fmt.Println(res4)

}

func merge(data [][]int) []int {
	uniqueMap := make(map[int]bool)
	result := []int{}
	for _, subArray := range data {
		for _, value := range subArray {
			if !uniqueMap[value] {
				uniqueMap[value] = true
				result = append(result, value)

			}
		}
	}
	return result
}
