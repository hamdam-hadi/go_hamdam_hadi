package main

import "fmt"

var memo = make(map[int]int)

func main() {

	fmt.Println(fibonacci(0))
	fmt.Println(fibonacci(2))
	fmt.Println(fibonacci(9))
	fmt.Println(fibonacci(10))
	fmt.Println(fibonacci(12))

}

func fibonacci(n int) int {
	if n <= 1 {
		return n
	}
	if val, ok := memo[n]; ok {
		return val
	}
	memo[n] = fibonacci(n-1) + fibonacci(n-2)
	return memo[n]
}
