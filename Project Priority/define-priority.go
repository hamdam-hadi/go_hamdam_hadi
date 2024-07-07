package main

import "fmt"

func budgetScore(budget int) int { //to calculate the score based on budget

	switch {

	case budget >= 0 && budget <= 50:
		return 4

	case budget >= 51 && budget <= 80:
		return 3

	case budget >= 81 && budget <= 100:
		return 2

	default:
		return 1

	}
}

func durationScore(duration int) int { //to calculate the score based on duration
	switch {
	case duration >= 0 && duration <= 20:
		return 10

	case duration >= 21 && duration <= 30:
		return 5

	case duration >= 31 && duration <= 50:
		return 2

	default:
		return 1
	}
}

func difficultyScore(difficulty int) int {
	switch {
	case difficulty >= 0 && difficulty <= 3:
		return 10

	case difficulty >= 4 && difficulty <= 6:
		return 5

	case difficulty >= 7 && difficulty <= 10:
		return 1

	default:
		return 0
	}
}

func projectPriority(totalScore int) string {
	switch {
	case totalScore >= 17 && totalScore <= 24:
		return "High"

	case totalScore >= 10 && totalScore <= 16:
		return "Medium"

	case totalScore >= 3 && totalScore <= 9:
		return "Low"

	default:
		return "Impossible"
	}
}

func main() {
	testCases := []struct {
		budget         int
		duration       int
		difficulty     int
		expectedResult string
	}{
		{40, 25, 5, "Medium"},
		{51, 10, 3, "High"},
	}

	for _, testCase := range testCases {
		budget := testCase.budget
		duration := testCase.duration
		difficulty := testCase.difficulty

		totalScore := budgetScore(budget) + durationScore(duration) + difficultyScore(difficulty)
		priority := projectPriority(totalScore)

		fmt.Printf("Input: Budget: %d, Duration %d, Difficulty %d\n", budget, duration, difficulty)
		fmt.Printf("Output: %s (Expected: %s)\n\n", priority, testCase.expectedResult)

	}

}
