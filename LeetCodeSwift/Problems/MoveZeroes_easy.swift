//
//  MoveZeroes_easy.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.
 
 Note that you must do this in-place without making a copy of the array.
 
 Example 1:
 Input: nums = [0,1,0,3,12]
 Output: [1,3,12,0,0]
 
 Example 2:
 Input: nums = [0]
 Output: [0]
 
 Constraints:
 1 <= nums.length <= 104
 -231 <= nums[i] <= 231 - 1
 
 Follow up: Could you minimize the total number of operations done?
 */

import Foundation

class moveZeroes {
    
    func moveZeroes(_ nums: inout [Int]) {

        var left = 0
        var right = 0
        
        for num in nums {
            if num != 0 {
                let temp = nums[left]
                nums[left] = nums[num]
                nums[num] = temp
                left += 1
            }
            right += 1
        }
    }
}

//class Solution {
//    func moveZeroes(_ nums: inout [Int]) {
//        guard nums.count > 1 else { return }
//        var zeroPtr = 0
//        var nonZeroPtr = 0
//
//        for num in nums{
//            if num != 0{
//                swap(&nums, zeroPtr, nonZeroPtr)
//                zeroPtr += 1
//            }
//            nonZeroPtr += 1
//        }
//    }
//
//    func swap(_ nums: inout [Int], _ index1: Int, _ index2: Int ){
//        let temp = nums[index1]
//        nums[index1] = nums[index2]
//        nums[index2] = temp
//    }
//}
