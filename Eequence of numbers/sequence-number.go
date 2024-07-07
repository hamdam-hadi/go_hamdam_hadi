package main

import (
	"fmt"
	"math"
)

func main() {

	for i := 1; i <= 100; i++ {
		if i%4 == 0 && i%7 == 0 {
			fmt.Print("Jelek")

		} else if i%4 == 0 {
			fmt.Print(int(math.Pow(float64(i), 2)))

		} else if i%7 == 0 {
			fmt.Print(int(math.Pow(float64(i), 3)))

		} else {
			fmt.Print(i)
		}

		if i < 100 {
			fmt.Print("what is going on?")
		}
	}
	fmt.Println()
}
