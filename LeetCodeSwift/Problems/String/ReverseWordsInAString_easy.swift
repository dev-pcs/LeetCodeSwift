//
//  ReverseWordsInAString_easy.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

/*
 Given a string s, reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.

 Example 1:
 Input: s = "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 
 Example 2:
 Input: s = "God Ding"
 Output: "doG gniD"
  
 Constraints:
 1 <= s.length <= 5 * 104
 s contains printable ASCII characters.
 s does not contain any leading or trailing spaces.
 There is at least one word in s.
 All the words in s are separated by a single space.
 */

import Foundation

class ReverseWordsInAString {
    
    func reverseWordsInAString(_ s: String) -> String {
        var charArray = Array(s)
        var spaceDetector = 0
        var left = 0
        
        while spaceDetector < charArray.count {
            while spaceDetector < charArray.count && charArray[spaceDetector] != " " {
                spaceDetector += 1
            }
            //swap
            var li = left
            var ri = spaceDetector - 1
            while li < ri {
                let temp = charArray[li]
                charArray[li] = charArray[ri]
                charArray[ri] = temp
                li += 1
                ri -= 1
            }
            left = spaceDetector + 1
            spaceDetector += 1
            
        }
        return String(charArray)
    }
}
