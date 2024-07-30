package main

import (
	"fmt"
	"strconv"
)

func main() {
	n := 2
	binaryNumbers := ConvertToBinary(n)
	fmt.Println(binaryNumbers)

}

func ConvertToBinary(n int) []string {
	binaryNumbers := []string{}
	for i := 0; i <= n; i++ {
		binaryNumbers = append(binaryNumbers, strconv.FormatInt(int64(i), 2))

	}
	return binaryNumbers
}
