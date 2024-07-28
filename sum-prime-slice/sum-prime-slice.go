package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Println(primSum([]int{1, 2, 4, 5, 12, 19, 30}))
	fmt.Println(primSum([]int{45, 17, 44, 67, 11}))
	fmt.Println(primSum([]int{15, 12, 9, 10}))

}

func primSum(numbers []int) int {
	sum := 0
	for _, number := range numbers {
		if isPrime(number) {
			sum += number
		}
	}
	return sum
}

func isPrime(n int) bool {
	if n <= 1 {
		return false
	}
	if n == 2 {
		return true
	}
	if n%2 == 0 {
		return false
	}
	sqrt := int(math.Sqrt(float64(n)))
	for i := 3; i <= sqrt; i += 2 {
		if n%i == 0 {
			return false
		}
	}
	return true
}
