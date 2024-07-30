package main

import (
	"fmt"
	"strings"
)

func main() {
	numRows := 5
	triangle := GeneratePascalTriangle(numRows)
	CenteredPascalTriangle(triangle)

}

func GeneratePascalTriangle(numRows int) [][]int {
	triangle := make([][]int, numRows)
	for i := 0; i < numRows; i++ {
		triangle[i] = make([]int, i+1)
		triangle[i][0], triangle[i][i] = 1, 1
		for j := 1; j < i; j++ {
			triangle[i][j] = triangle[i-1][j-1] + triangle[i-1][j]
		}
	}
	return triangle
}

func CenteredPascalTriangle(triangle [][]int) {
	numRows := len(triangle)
	maxWidht := len(fmt.Sprint(triangle[numRows-1]))
	for _, row := range triangle {
		rowString := strings.Trim(fmt.Sprint(row), "[]")
		padding := (maxWidht - len(rowString)) / 2
		fmt.Printf("%s%s\n", strings.Repeat(" ", padding), rowString)
	}
}
