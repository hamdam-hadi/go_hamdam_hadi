package main

import (
	"fmt"
	"math"
)

func main() {
	i := 1
	for {
		if i%4 == 0 && i%7 == 0 {
			print("buzz")

		} else if i%4 == 0 {

			fmt.Print(int(math.Pow(float64(i), 2)))

		} else if i%7 == 0 {

			cube := int(math.Pow(float64(i), 3))
			fmt.Print(cube)
			if cube >= 2744 {
				break

			}

		} else {
			fmt.Print(i)
		}
		if i < 100 || int(math.Pow(float64(i), 3)) < 2744 {
			fmt.Print(" / ")
		}

		i++
	}
	fmt.Println()
}
