package main

import (
	"fmt"
	"sort"
	"strings"
)

func areAnagrams(word1, word2 string) bool {
	word1 = strings.ReplaceAll(strings.ToLower(word1), " ", "")
	word2 = strings.ReplaceAll(strings.ToLower(word2), " ", "")

	if len(word1) != len(word2) {
		return false

	}
	runes1 := []rune(word1)
	runes2 := []rune(word2)

	sort.Slice(runes1, func(i, j int) bool { return runes1[i] < runes1[j] })
	sort.Slice(runes2, func(i, j int) bool { return runes2[i] < runes2[j] })

	return string(runes1) == string(runes2)
}

func main() {
	testCases := []struct {
		word1, word2 string
	}{
		{"cafe", "face"},
		{"donut", "peanut"},
	}
	for _, testCase := range testCases {
		isAnagram := areAnagrams(testCase.word1, testCase.word2)
		if isAnagram {
			fmt.Printf("%s and %s are Anagrams.\n", testCase.word1, testCase.word2)

		} else {
			fmt.Printf("%s and %s are not Anagrams.\n", testCase.word1, testCase.word2)
		}
	}

}
