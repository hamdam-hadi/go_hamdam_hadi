package main

import "fmt"

func main() {
	fmt.Println(spinSlice([]int{1, 2, 3, 4, 5}))
	fmt.Println(spinSlice([]int{6, 7, 8}))
	fmt.Println(spinSlice([]int{8, 5, 4, 3, 2, 1}))
}

func spinSlice(numbers []int) []int {
	n := len(numbers)
	result := make([]int, n)
	copy(result, numbers)

	left := 1
	right := n - 1
	for left < right {
		result[left], result[right] = result[right], result[left]
		left++
		right--

	}
	return result

}
