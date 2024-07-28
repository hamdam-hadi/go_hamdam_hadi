package main

import (
	"fmt"
	"strings"
)

func main() {
	fmt.Println(groupPalindrome([]string{"katak", "civic", "kasur", "rusak"}))
	fmt.Println(groupPalindrome([]string{"racecar", "seru", "kasur", "civic", "bilik", "kak"}))
	fmt.Println(groupPalindrome([]string{"masuk", "civic", "hahah", "garam"}))
}

func groupPalindrome(words []string) [][]string {
	var palindromes []string
	var notPalindromes []string
	for _, word := range words {
		if isPalindrome(word) {
			palindromes = append(palindromes, word)
		} else {
			notPalindromes = append(notPalindromes, word)
		}
	}

	var result [][]string
	if len(palindromes) > 0 {
		result = append(result, palindromes)
	}
	if len(notPalindromes) > 0 {
		result = append(result, notPalindromes)
	}
	return result
}

func isPalindrome(word string) bool {
	word = strings.ToLower(word)
	reversed := reverse(word)
	return word == reversed
}

func reverse(s string) string {
	runes := []rune(s)
	for i, j := 0, len(runes)-1; i < j; i, j = i+1, j-1 {
		runes[i], runes[jj] = runes[j], runes[i]
	}
	return string(runes)
}
