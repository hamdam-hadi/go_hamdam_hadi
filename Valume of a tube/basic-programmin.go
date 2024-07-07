package main

import "fmt"

func main() {

	const Phi = 3.14

	var radius, height float64

	fmt.Print("Enter the radius of the tube:") //asking user to input the radius of the tube.

	fmt.Scan(&radius) //used pointer to check and then excute user input

	fmt.Print("Enter the height of the tube")

	fmt.Scan(&height) //the same as radius

	volume := Phi * radius * radius * height

	fmt.Printf("The volume of the tube is: %.2f\n", volume) // the %.2f here formats the output to 2 decimal.
}
