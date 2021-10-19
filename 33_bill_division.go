// https://www.hackerrank.com/challenges/bon-appetit/problem

package main

import (
    "fmt"
)

func main() {
    var n int
    var k int
    fmt.Scanf("%d", &n)
    fmt.Scanf("%d", &k)
    bill := make([]int, n)
    // bill = append(bill,1)

    ans := 0

    for i, _ := range bill {
        fmt.Scanf("%d", &bill[i])
        if i == k {
        } else {
            ans += bill[i]
        }
    }

    var fin int
    fmt.Scanf("%d", &fin)

    ans = ans / 2

    if ans == fin {
        fmt.Println("Bon Appetit")
    } else {
        fmt.Println(fin - ans)
    }
    // fmt.Println(n, k, bill, "hello world")
}
