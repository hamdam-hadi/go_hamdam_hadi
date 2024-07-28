package main

import (
	"fmt"
	"strings"
)

func main() {
	fmt.Println(pickVocals("alterra academy"))
	fmt.Println("I love Golang")
	fmt.Println("Golang is an awesome programming language")

}

func pickVocals(sentence string) string {
	vowels := "aeiou"
	words := strings.Split(sentence, " ")
	result := []string{}

	for _, word := range words {
		var vowelsInWord string
		for _, char := range word {
			if strings.ContainsRune(vowels, char) {
				vowelsInWord += string(char)
			}
		}
		result = append(result, vowelsInWord)
	}
	return strings.Join(result, " ")
}
