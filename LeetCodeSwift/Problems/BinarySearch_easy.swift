//
//  BinarySearch_easy.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

import Foundation

class BinarySearch {
    func search(_ nums: [Int], _ target: Int) -> Int {
        if nums.count == 0 {
            return -1
        }
        
        var left = 0
        var right = nums.count - 1
        
        while left <= right {
            let midpoint = left + (right - left) / 2
            if (nums[midpoint] == target) {
                return midpoint
            } else if (nums[midpoint] > target) {
                right = midpoint - 1
            } else {
                left = midpoint + 1
            }
        }
        return -1
    }
}
