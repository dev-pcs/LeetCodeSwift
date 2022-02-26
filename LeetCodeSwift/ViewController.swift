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
//        runBinarySearch()
//        runSearchInsertedPostion()
//        runPalindromeNumber()
        runSquaresOfASortedArray()
    }
    
    
    func runMaximumProductSubarray() {
        let maximumProductSubarray = MaximumProductSubarray()
        let solution = maximumProductSubarray.maxProduct(nums: [2,3,-2,4])
        print(solution)
    }
    
    
    func runtwoSum() {
        let twoSum = TwoSum()
        let solution = twoSum.twoSum([3, 2, 1, 7, 4], 6)
        print(solution)
    }
    
    
    func runBinarySearch() {
        let binarySearch = BinarySearch()
        let solution = binarySearch.binarySearch([1,2,4,6,7,8,9,13], 9)
        print(solution)
    }
    
    
    func runSearchInsertedPostion() {
        let searchInsertedPostion = SearchInsertedPostion()
        let solution = searchInsertedPostion.searchInsertedPostion([2, 4, 5, 6, 7], 8)
        print(solution)
    }
    
    
    func runPalindromeNumber() {
        let palindromeNumber = PalindromeNumber()
        let solution = palindromeNumber.palindromeNumber(04540)
        print(solution)
    }
    
    func runSquaresOfASortedArray() {
        let squaresOfASortedArray = SquaresOfASortedArray_easy()
        let solution = squaresOfASortedArray.squaresOfASortedArray([-4,-3,-1,0,2,4,5,6])
        print(solution)
    }
}

