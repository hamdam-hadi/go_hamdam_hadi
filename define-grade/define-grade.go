package main

import "fmt"

func main() {

	var score int

	fmt.Print("input the score")

	fmt.Scan(&score)

	var grade string

	if score < 0 || score > 100 {
		grade = "Invlid score"
	} else if score >= 85 && score <= 100 {
		grade = "A"
	} else if score >= 70 && score <= 84 {
		grade = "B"
	} else if score >= 55 && score <= 69 {
		grade = "C"
	} else if score >= 40 && score <= 50 {
		grade = "D"
	} else {
		grade = "E"
	}
	fmt.Printf("Here is the grade: %s\n", grade)

}
