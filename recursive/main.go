package main

import "fmt"

func main() {
	fmt.Println(fibP(5))
	fmt.Println(fibP(10))
}

func fibonacci(n int) int {
	if n <= 1 {
		return n
	}
	return fibonacci(n-1) + fibonacci(n-2)
}

func fibP(n int) int {
	sum := 0
	for i := 0; i <= n; i++ {
		sum += fibonacci(i)
	}
	return sum
}
