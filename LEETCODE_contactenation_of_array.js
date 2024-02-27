// Given an integer array nums of length n, you want to create an array ans of length 2n where ans[i] == nums[i] and ans[i + n] == nums[i] for 0 <= i < n (0-indexed).

// Specifically, ans is the concatenation of two nums arrays.

// Return the array ans.

 

// Example 1:

// Input: nums = [1,2,1]
// Output: [1,2,1,1,2,1]
// Explanation: The array ans is formed as follows:
// - ans = [nums[0],nums[1],nums[2],nums[0],nums[1],nums[2]]
// - ans = [1,2,1,1,2,1]


// Time complexity: O(n)
// Space complexity: O(n)
/**
 * @param {number[]} nums
 * @return {number[]}
 */
var getConcatenation = function(nums) {
    let res = []
    let numsIdx = 0

    while (res.length != 2 * nums.length) {
        res.push(nums[numsIdx])
        
        if (numsIdx == nums.length-1) {
            numsIdx = 0
        } else {
            numsIdx++
        }
    }
    
    return res
};

// Time complexity: O(n)
// Space complexity: O(1)
var getConcatenation = function(nums) {
    let numsIdx = 0
    let numsInitialLength = nums.length;
    
    while (nums.length != (2 * numsInitialLength)) {
        nums.push(nums[numsIdx])
        
        if (numsIdx == nums.length-1) {
            numsIdx = 0
        } else {
            numsIdx++
        }
    }
    
    return nums
};
