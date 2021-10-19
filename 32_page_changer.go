// given a book with n pages, find the minimum flips required to go to page k ( either from front or back )

package main

import (
    "fmt"
)


func main() {
    var n int
    var p int
    fmt.Scanf("%d", &n)
    fmt.Scanf("%d", &p)

    ansl := int(p/2)
    ansr := int(n/2 - p/2)

    if ansl < ansr {
        fmt.Println(ansl)
    } else{
        fmt.Println(ansr)
    }
}
