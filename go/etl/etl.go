package etl

import "strings"

func Transform(in map[int][]string) (out map[string]int) {
        out = make(map[string]int)
        for key, values := range in {
                for _, val := range values {
                        out[strings.ToLower(val)] = key
                }
        }
        return
}

package etl

import "strings"

func Transform(input in) out {
        result := make(out)
        for score, letters := range input {
                for _, letter := range letters {
                        result[strings.ToLower(letter)] = score
                }
        }
        return result
}
