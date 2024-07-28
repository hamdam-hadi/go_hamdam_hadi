package main

import (
	"fmt"
)

func main() {
	data1 := []float64{1, 2, 5, 6, 8, 12, 4, 5, 5, 8, 9}

	fmt.Println("sum:", formatFloat(sum(data1)))
	fmt.Println("mean:", formatFloat(mean(data1)))
	fmt.Println("median:", formatFloat(median(data1)))
	fmt.Println("mode:", formatFloat(mode(data1)))

	data2 := []float64{6, 7, 1, 11, 8, 12, 6, 12, 1, 7, 8, 10, 14}

	fmt.Println("sum:", formatFloat(sum(data2)))
	fmt.Println("mean:", formatFloat(mean(data2)))
	fmt.Println("median:", formatFloat(median(data2)))
	fmt.Println("mode:", formatFloat(mode(data2)))
}

func sum(data []float64) float64 {
	total := 0.0
	for _, value := range data {
		total += value
	}
	return total
}

func mean(data []float64) float64 {
	total := sum(data)
	return total / float64(len(data))
}

func median(data []float64) float64 {
	n := len(data)
	sorted := make([]float64, n)
	copy(sorted, data)
	manualSort(sorted)
	if n%2 == 0 {
		return (sorted[n/2-1] + sorted[n/2]) / 2
	}
	return sorted[n/2]
}

func mode(data []float64) float64 {
	frequency := make(map[float64]int)
	for _, value := range data {
		frequency[value]++
	}
	maxFreq := 0
	var modeValue float64
	for value, count := range frequency {
		if count > maxFreq {
			maxFreq = count
			modeValue = value
		} else if count == maxFreq {
			if modeValue > value {
				modeValue = value
			}
		}
	}
	return modeValue
}

func manualSort(data []float64) {
	for i := 0; i < len(data); i++ {
		for j := i + 1; j < len(data); j++ {
			if data[i] > data[j] {
				data[i], data[j] = data[j], data[i]

			}
		}
	}
}
func formatFloat(num float64) string {
	return fmt.Sprintf("%.2f", num)

}
