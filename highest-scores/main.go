package main

import "fmt"

type Student struct {
	Name         string
	MathScore    int
	ScienceScore int
	EnglishScore int
}

func main() {
	Students := []Student{
		{"jamie", 67, 88, 90},
		{"michael", 77, 77, 90},
		{"aziz", 100, 65, 88},
		{"jamal", 50, 80, 75},
		{"eric", 70, 80, 65},
		{"john", 80, 76, 68},
	}

	getInfo(Students)

}

func getInfo(students []Student) {
	var bestMathStudent, bestScienceStudent, bestEnglishStudent Student
	var highestMath, highestScience, highestEnglish int
	var bestAvgStudent Student
	var highestAvg float64

	for _, student := range students {
		if student.MathScore > highestMath {
			highestMath = student.MathScore
			bestMathStudent = student
		}
		if student.ScienceScore > highestScience {
			highestScience = student.ScienceScore
			bestScienceStudent = student
		}
		if student.EnglishScore > highestEnglish {
			highestEnglish = student.EnglishScore
			bestEnglishStudent = student
		}
		avg := float64(student.MathScore+student.ScienceScore+student.EnglishScore) / 3
		if avg > highestAvg {
			highestAvg = avg
			bestAvgStudent = student
		}
	}
	fmt.Printf("best student in math : % s with %d\n", bestMathStudent.Name, highestMath)
	fmt.Printf("best student in science : % s with %d\n", bestScienceStudent.Name, highestScience)
	fmt.Printf("best student in english : % s with %d\n", bestEnglishStudent.Name, highestEnglish)
	fmt.Printf("best student in average : % s with %d\n", bestAvgStudent.Name, highestAvg)

}
