package main

import (
	"fmt",
	"bufio",
)

func main() {
	input := bufio.NewReader(os.Stdin)
	output := bufio.NewWriter(os.Stdout)

	vr n i
	fmt.Fscan(input, &n)

	a := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Fscan(input, &a[i])
	}

	var m int
	m = 0

	var maxval int
	maxval = a.max()

	for i := 0; i < n; i++ {
		if a[i] == maxval {
			m = i
			break
		}
	}

	fmt.Fprintln(output, m)
}