// Time complexity: O(n)
// Space complexity: O(n)
var buildArray = function(nums) {
    const res = []
    
    for (let i=0; i<nums.length; i++) {
        res[i] = nums[nums[i]]
    }
    
    return res
};
