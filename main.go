package main

import (
	"fmt"

	"github.com/edwintrumpet/experiment_golang_ci_server/calcs"
)

func main() {
	const a int = 8
	const b int = 11

	result := calcs.Add(a, b)

	fmt.Printf("%d + %d = %d\n", a, b, result)
}
