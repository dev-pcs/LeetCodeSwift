//
//  ThreeSum_medium.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 3/2/22.
//

/*
 Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
 
 Notice that the solution set must not contain duplicate triplets.
 
 Example 1:
 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 
 Example 2:
 Input: nums = []
 Output: []
 
 Example 3:
 Input: nums = [0]
 Output: []
 
 Constraints:
 0 <= nums.length <= 3000
 -105 <= nums[i] <= 105
 */

import Foundation

class ThreeSum {
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        var result = [[Int]]()
        let nums = nums.sorted()
        
        for i in 0..<nums.count - 2 {
            if i > 0 && nums[i] == nums[i - 1] {
                continue
            }
            
            var left = i + 1
            var right = nums.count - 1
            
            while left < right {
                var threeSum = nums[i] + nums[left] + nums[right]
                if threeSum > 0 {
                    right -= 1
                }else if threeSum < 0 {
                    left += 1
                } else if threeSum == 0 {
                    result.append([nums[i], nums[left], nums[right]])
                    left += 1
                    while nums[left] == nums[left - 1] && left < right {
                        left += 1
                    }
                }
            }
        }
        return result
    }
}
