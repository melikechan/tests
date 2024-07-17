package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	arr := make([]int, 1000)

	fmt.Println(arr[n+100000])
}
