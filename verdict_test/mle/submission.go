package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	arr := make([]int, 5e7)
	for i := 0; i < 5e7; i++ {
		arr[i] = i
	}

	for i := 0; i < n; i++ {
		fmt.Println(arr[i])
	}
}
