//
//  MaximumProductSubarray.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

import Foundation

class MaximumProductSubarray {
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
