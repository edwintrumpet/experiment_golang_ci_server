package calcs_test

import (
	"testing"

	"github.com/edwintrumpet/experiment_golang_ci_server/calcs"
)

var sumTest = []struct {
	a      int
	b      int
	result int
}{
	{11, 36, 47},
	{36, -11, 25},
	{-11, -36, -47},
	{-36, 11, 25},
}

func TestAdd(t *testing.T) {
	for _, tt := range sumTest {
		result := calcs.Add(tt.a, tt.b)
		if result != tt.result {
			t.Errorf("%d + %d must be %d but result was %d", tt.a, tt.b, tt.result, result)
		} else {
			t.Logf("%d + %d test passed", tt.a, tt.b)
		}
	}
}
