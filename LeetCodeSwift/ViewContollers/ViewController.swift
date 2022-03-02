//
//  ViewController.swift
//  LeetCodeSwift
//
//  Created by Priyank Shah on 2/25/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var problemsTableView: UITableView!
    
    var ProblemsArray = [
        "MaximumProductSubarray_medium",
        "TwoSum_easy",
        "BinarySearch_easy",
        "SearchInsertedPostion_easy",
        "PalindromeNumber_easy",
        "SquaresOfASortedArray_easy",
        "RotateArray_medium"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        problemsTableView.delegate = self
        problemsTableView.dataSource = self
        
//        runMaximumProductSubarray()
//        runtwoSum()
//        runBinarySearch()
//        runSearchInsertedPostion()
//        runPalindromeNumber()
//        runSquaresOfASortedArray()
//        runRotateArray()
//        runMoveZeroes()
//        runtwoSumSortedArray()
//        runMoveZeroes()
//        runReverseWordsInAString()
//        runBestTimeToSellAndBuy()
//        runContainsDuplicate()
//        runProductOfArrayExceptSelf()
//        runMaxSubArray()
//        runFindMinimumInRotatedSortedArray()
//        runTwoSumII()
//        runThreeSum()
        runContainerWithMostWater()
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
    
    
    func runRotateArray() {
        let rotateArray = RotateArray()
        let solution = rotateArray.reverse(nums: [1, 2, 4, 5, 8, 7, 0, 8], start: 2, end: 5)
        print(solution)
    }
    
    
    //    func runMoveZeroes() {
    //        let moveZeros = moveZeroes()
    //        let solution = moveZeros.moveZeroes([0,1,0,3,12])
    //        print(solution)
    //    }
    
    
    func runtwoSumSortedArray() {
        let twoSumSortedArray = TwoSumSortedArray()
        let solution = twoSumSortedArray.twoSumSortedArray([1,3,4,5,7,11], 4)
        print(solution)
    }
    
    
    //    func runReverseString() {
    //        let reverseString = ReverseString()
    //        let solution = reverseString.reverseString(<#T##s: &[Character]##[Character]#>)
    //        print(solution)
    //    }
    
    
    func runReverseWordsInAString() {
        let reverseWordsInAString = ReverseWordsInAString()
        let solution = reverseWordsInAString.reverseWordsInAString("hello how are you")
        print(solution)
    }
    
    
    func runBestTimeToSellAndBuy() {
        let bestTimeToSellAndBuy = BestTimeToSellAndBuy()
        let solution = bestTimeToSellAndBuy.bestTimeToSellAndBuy([7,1,5,3,6,4])
        print(solution)
    }
    
    
    func runContainsDuplicate() {
        let containsDuplicate = ContainsDuplicate()
        let solution = containsDuplicate.containsDuplicate(nums: [1,2,3,4,5,3])
        print(solution)
    }
    
    
    func runProductOfArrayExceptSelf() {
        let productOfArrayExceptSelf = ProductOfArrayExceptSelf()
        let solution = productOfArrayExceptSelf.productOfArrayExceptSelf([1,2,3,4,5])
        print(solution)
    }
    
    
    func runMaxSubArray() {
        let maxSubArray = MaxSubArray()
        let solution = maxSubArray.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
        print(solution)
    }
    
    
    func runFindMinimumInRotatedSortedArray() {
        let findMinimumInRotatedSortedArray = FindMinimumInRotatedSortedArray()
        let solution = findMinimumInRotatedSortedArray.FindMinimumInRotatedSortedArray([4,5,6,7,0,1,2])
        print(solution)
    }
    
    
    func runTwoSumII() {
        let twoSumII = TwoSumII()
        let solution = twoSumII.TwoSumII([2,7,11,15], 9)
        print(solution)
    }
    
    
    func runThreeSum() {
        let threeSum = ThreeSum()
        let solution = threeSum.threeSum([-1,0,1,2,-1,-4])
        print(solution)
    }
    
    
    func runContainerWithMostWater() {
        let containerWithMostWater = ContainerWithMostWater()
        let solution = containerWithMostWater.maxArea([1,1])
        print(solution)
    }
    
}

//Mark: Extension

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("selected \(ProblemsArray[indexPath.row])")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ProblemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = problemsTableView.dequeueReusableCell(withIdentifier: "LeetCodeProblem", for: indexPath)
        cell.textLabel?.text = ProblemsArray[indexPath.row]
        return cell
    }
}
