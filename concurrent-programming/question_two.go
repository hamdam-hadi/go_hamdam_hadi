package main

import "fmt"

func main() {
	primeCh := make(chan int)
	squareCh := make(chan int)

	go generatePrimes(primeCh)
	go calculateSquares(primeCh, squareCh)

	for square := range squareCh {
		fmt.Println(square)
	}

}

func generatePrimes(ch chan int) {
	for num := 2; num <= 100; num++ {
		if isPrime(num) {
			ch <- num
		}
	}
	close(ch)
}

func isPrime(num int) bool {
	if num <= 1 {
		return false
	}
	for i := 2; i*i <= num; i++ {
		if num%i == 0 {
			return false
		}
	}
	return true
}

func calculateSquares(primeCh chan int, squareCh chan int) {
	for prime := range primeCh {
		squareCh <- prime * prime
	}
	close(squareCh)
}
