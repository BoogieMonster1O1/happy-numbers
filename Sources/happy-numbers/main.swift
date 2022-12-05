//
// Created by Shrish Deshpande on 12/5/22.
//

import Foundation

print("Enter the number: ")
var number = Int(readLine()!)!

func isHappy(num: Int) -> Bool {
    if num == 1 {
        return true
    } else if num == 4 {
        return false
    } else {
        var sum = 0
        var num = num
        while num > 0 {
            sum += (num % 10) * (num % 10)
            num /= 10
        }
        return isHappy(num: sum)
    }
}

if isHappy(num: number) {
    print("The number is a happy number")
} else {
    print("The number is not a happy number")
}
