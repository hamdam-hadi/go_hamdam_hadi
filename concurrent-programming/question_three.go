package main

import "fmt"

func main() {
	compCh := make(chan int)
	squareCh := make(chan int)

	go generateComposites(compCh)
	go calculateSquares(compCh, squareCh)
	checkEvenOdd(squareCh)

}

func generateComposites(ch chan int) {
	for num := 2; num <= 100; num++ {
		if isComposite(num) {
			ch <- num
		}
	}
	close(ch)
}

func isComposite(num int) bool {
	if num < 4 {
		return false
	}
	for i := 2; i*i <= num; i++ {
		if num%i == 0 {
			return true
		}
	}
	return false
}

func calculateSquare(compCh chan int, squareCh chan int) {
	for composite := range compCh {
		squareCh <- composite * composite
	}
	close(squareCh)
}

func checkEvenOdd(squareCh chan int) {
	for square := range squareCh {
		if square%2 == 0 {
			fmt.Println(square, "Pong")
		} else {
			fmt.Println(square, "Ping")
		}
	}
}
