//
//  SquaresOfASortedArray_easy.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

/*
 Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

 Example 1:
 Input: nums = [-4,-1,0,3,10]
 Output: [0,1,9,16,100]
 Explanation: After squaring, the array becomes [16,1,0,9,100].
 After sorting, it becomes [0,1,9,16,100].
 
 Example 2:
 Input: nums = [-7,-3,2,3,11]
 Output: [4,9,9,49,121]
  

 Constraints:

 1 <= nums.length <= 104
 -104 <= nums[i] <= 104
 nums is sorted in non-decreasing order.
  
 Follow up: Squaring each element and sorting the new array is very trivial, could you find an O(n) solution using a different approach?
 */


import Foundation

class SquaresOfASortedArray_easy {
    
    func squaresOfASortedArray(_ nums: [Int]) -> [Int] {
        var leftPointer = 0
        var rightPointer = nums.count - 1
        
        var sortedArray: [Int] = []
        
        while leftPointer <= rightPointer {
            if nums[leftPointer] * nums[leftPointer] > nums[rightPointer] * nums[rightPointer] {
                sortedArray.append(nums[leftPointer] * nums[leftPointer])
                leftPointer += 1
            } else {
                sortedArray.append(nums[rightPointer] * nums[rightPointer])
                rightPointer -= 1
            }
        }
        return sortedArray.reversed()
    }
}
