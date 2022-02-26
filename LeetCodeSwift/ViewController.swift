//
//  ViewController.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        runMaximumProductSubarray()
//        runtwoSum()
        runBinarySearch()
    }
    
    
    func runMaximumProductSubarray() {
        let maximumProductSubarray = MaximumProductSubarray_medium()
        let solution = maximumProductSubarray.maxProduct(nums: [2,3,-2,4])
        print(solution)
    }
    
    
    func runtwoSum() {
        let twoSum = TwoSum_easy()
        let solution = twoSum.twoSum([3, 2, 1, 7, 4], 6)
        print(solution)
    }
    
    
    func runBinarySearch() {
        let binarySearch = BinarySearch()
        let solution = binarySearch.search([1,2,4,6,7,8,9,13], 9)
        print(solution)
    }
}

