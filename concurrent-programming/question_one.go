package main

import (
	"fmt"
	"time"
)

func main() {
	word := "phone"
	ch := make(chan string)

	go reverseAndDisplay(word, ch)
	for partialResult := range ch {
		fmt.Println(partialResult)
	}

}

func reverseAndDisplay(word string, ch chan string) {
	reversed := ""
	for i := len(word) - 1; i >= 0; i-- {
		reversed += string(word[i])
		time.Sleep(3 * time.Second)
	}
	close(ch)
}
