package main

import (
	"fmt"
)

func findMax(arr []int) int {
	max := arr[0]
	for _, num := range arr {
		if num > max {
			max = num
		}
	}
	return max
}

func main() {
	var n int
	fmt.Scan(&n)

	a := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	var m int
	m = 0

	var maxval int
	maxval = findMax(a)

	for i := 0; i < n; i++ {
		if a[i] == maxval {
			m = i
			break
		}
	}

	fmt.Println(m)
}
