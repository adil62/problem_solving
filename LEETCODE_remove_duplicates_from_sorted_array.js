/**
 * @param {number[]} nums
 * @return {number}
 */
// algorithm is in place
var removeDuplicates = function(nums) {
    let lPtr = 1;
    for (let rPtr=1; rPtr < nums.length; rPtr++) {
        if (nums[rPtr] !== nums[rPtr-1]) {
            nums[lPtr] = nums[rPtr]
            lPtr++
        }
    }

    return lPtr
};

console.log(
    removeDuplicates([1,2,3,3,3,3,4,4])
)