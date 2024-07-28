package main

import "fmt"

func main() {
	fmt.Println(spinString("alta"))
	fmt.Println(spinString("alterra"))
	fmt.Println(spinString("sepulsa"))

}

func spinString(word string) string {
	if len(word) <= 1 {
		return word
	}

	return string(word[len(word)-1]) + word[:len(word)-1]
}
