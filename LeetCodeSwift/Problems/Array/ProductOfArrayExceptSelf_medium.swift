//
//  ProductOfArrayExceptSelf_medium.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

/*
 Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

 You must write an algorithm that runs in O(n) time and without using the division operation.

 Example 1:
 Input: nums = [1,2,3,4]
 Output: [24,12,8,6]
 
 Example 2:
 Input: nums = [-1,1,0,-3,3]
 Output: [0,0,9,0,0]
  
 Constraints:
 2 <= nums.length <= 105
 -30 <= nums[i] <= 30
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
 */

import Foundation

class ProductOfArrayExceptSelf {
    
    func productOfArrayExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var i = 0
        var outputArray = Array(repeating:1,count:n)
        var leftProducts = [Int]()
        var rightProducts = [Int]()

        leftProducts[0] = 1
        rightProducts[n - 1] = 1

        i = 1
        while (i < n) {
            leftProducts[i] = nums[i-1] * leftProducts[i-1]
            i += 1
        }

        i = n-2
        while (i > 0) {
            rightProducts[i] = nums[i+1] * rightProducts[i+1]
            i -= 1
        }

        i = 0
        while (i < n) {
            outputArray[i] = leftProducts[i] * rightProducts[i]
         }

        return outputArray
    }
}


