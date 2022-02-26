//
//  PalindromeNumber_easy.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

/*
 Given an integer x, return true if x is palindrome integer.
 An integer is a palindrome when it reads the same backward as forward.
 For example, 121 is a palindrome while 123 is not.
 
 Example 1:
 Input: x = 121
 Output: true
 Explanation: 121 reads as 121 from left to right and from right to left.
 
 Example 2:
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 
 Example 3:
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 
 Constraints:
 -231 <= x <= 231 - 1
 
 Follow up: Could you solve it without converting the integer to a string?
 */


/*
// REVERSED STRING
 
import UIKit
class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        let stringForward = String(x)
        let stringBackward = String(String(x).reversed())
        return stringForward == stringBackward
    }
}
*/

import Foundation

class PalindromeNumber {
    
    func palindromeNumber(_ x: Int) -> Bool {
        
        // when x < 0, x is not a palindrome.
        // Also if the last digit of the number is 0, in order to be a palindrome,
        // the first digit of the number also needs to be 0.
        
        if x < 0 || (x % 10 == 0 && x != 0) {
            return false
        }
        var y = x
        var revertedNum = 0
        while (y > revertedNum) {
            revertedNum = revertedNum * 10 + y % 10
            y = y / 10
        }
        return (y == revertedNum || y == revertedNum / 10)}
}
