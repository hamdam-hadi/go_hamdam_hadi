package main

import "fmt"

func main() {
	fmt.Println(getSequence(4))
	fmt.Println(getSequence(15))
	fmt.Println(getSequence(100))

}

func getSequence(n int) int {
	return n * (n + 1) / 2
}
