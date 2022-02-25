//
//  TwoSum_easy.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

import Foundation

class TwoSum_easy {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for (key, val) in nums.enumerated() {
            dict[val] = key
        }
        print(dict)
        
        for (key, val) in nums.enumerated() {
            if let otherIndex = dict[target - val], otherIndex != key {
                return [key, otherIndex]
            }
        }
        return [0,0]
    }
}
