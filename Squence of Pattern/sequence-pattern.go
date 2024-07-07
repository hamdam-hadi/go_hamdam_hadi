package main

import "fmt"

func main() {
	inputs := []int{26, 35}

	for _, input := range inputs {
		pattern := generatePattern(input)
		fmt.Println("Input:", input)
		fmt.Println("Output:", pattern)
	}

}

func generatePattern(n int) string {
	pattern := ""
	for i := 1; i <= n; i++ {
		if n%i == 0 {
			if i%2 == 0 {
				pattern += "I"

			} else {
				pattern += "O"
			}
		}
	}
	return pattern
}
