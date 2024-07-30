package main

import "fmt"

func main() {
	fmt.Println(Frog([]int{10, 30, 40, 20}))
	fmt.Println(Frog([]int{30, 10, 60, 10, 60, 50}))

}

func Frog(jumps []int) int {
	n := len(jumps)
	if n == 0 {
		return 0
	}
	dp := make([]int, n)
	for i := range dp {
		dp[i] = int(1e9)
	}
	dp[0] = 0

	for i := 0; i < n; i++ {
		if i+1 < n {
			dp[i+1] = min(dp[i+1], dp[i]+abs(jumps[i]-jumps[i+1]))
		}
		if i+2 < n {
			dp[i+2] = min(dp[i+2], dp[i]+abs(jumps[i]-jumps[i+2]))
		}
	}
	return dp[n-1]
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}
