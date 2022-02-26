//
//  MaximumProductSubarray.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

/*
 Given an integer array nums, find a contiguous non-empty subarray within the array that has the largest product, and return the product.
 
 The test cases are generated so that the answer will fit in a 32-bit integer.
 A subarray is a contiguous subsequence of the array.
 
 Example 1:
 Input: nums = [2,3,-2,4]
 Output: 6
 Explanation: [2,3] has the largest product 6.
 
 Example 2:
 Input: nums = [-2,0,-1]
 Output: 0
 Explanation: The result cannot be 2, because [-2,-1] is not a subarray.
 
 Constraints:
 1 <= nums.length <= 2 * 104
 -10 <= nums[i] <= 10
 The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.
 */

import Foundation

class MaximumProductSubarray_medium {
    
    func maxProduct(nums: [Int]) -> Int {
        var min_soFar = nums[0]
        var max_soFar = nums[0]
        var max_global = nums[0]
        
        for i in 1..<nums.count {
            let a = max_soFar * nums[i]
            let b = min_soFar * nums[i]
            
            max_soFar = max(a, b, nums[i])
            min_soFar = min(a, b, nums[i])
            
            max_global = max(max_global, max_soFar)
        }
        return max_global
    }
}
