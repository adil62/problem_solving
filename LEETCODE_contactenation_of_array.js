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
