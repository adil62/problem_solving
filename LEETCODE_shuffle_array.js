// Time complexity: O(n)
// Space complexity: O(n)

/**
 * @param {number[]} nums
 * @param {number} n
 * @return {number[]}
 */
var shuffle = function(nums, n) {
    let res = []
    let xPtr = 0;
    let yPtr = n;
    
    while (yPtr < nums.length) {
        res.push(nums[xPtr])
        res.push(nums[yPtr])
        xPtr++
        yPtr++
    }
    
    return res    
};
