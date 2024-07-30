package main

import "fmt"

func main() {
	SimpleEquations(1, 2, 3)
	SimpleEquations(6, 6, 14)

}

func SimpleEquations(a, b, c int) {
	x := (a + c - b) / 2
	y := (a + b - c) / 2
	z := (b + c - a) / 2

	if (a+b-c)%2 != 0 || (a+c-b)%2 != 0 || (b+c-a)%2 != 0 {
		fmt.Println("no solution")
		return
	}
	if (x+y == a) && (y+z == b) && (z+x == c) {
		fmt.Println("no solution")
		return
	}
	if (x+y == a) && (y+z == b) && (z+x == c) {
		fmt.Printf("%d %d %d\n", x, y, z)
	} else {
		fmt.Println("no solution")
	}
}
