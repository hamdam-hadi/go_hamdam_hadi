package main

import "fmt"

func main() {
	fmt.Println(groupPrime([]int{2, 3, 4, 5, 6, 7, 8}))
	fmt.Println(groupPrime([]int{15, 24, 3, 9, 5}))
	fmt.Println(groupPrime([]int{4, 8, 9, 12}))
}

func groupPrime(numbers []int) []any {
	primes := []int{}
	notPrimes := []int{}

	for _, number := range numbers {
		if isPrime(number) {
			primes = append(primes, number)
		} else {
			notPrimes = append(notPrimes, number)
		}
	}
	result := []any{}
	if len(primes) > 0 {
		result = append(result, primes)

	}
	return result
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
	for i := 3; i*i <= n; i += 2 {
		if n%i == 0 {
			return false
		}
	}
	return true

}
