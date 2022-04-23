/**
 * @param {number[]} nums
 * @param {number} val
 * @return {number}
 */
 var removeElement = function(nums, val) {
    let i = 0;
    let numDuplicateVal = 0;
    let startSwap = false;
    let result = 0 ;
    let valueNeverFound=true;
     
    for (let i = 0; i < nums.length; i++) {
        if (nums[i] === val) {
         numDuplicateVal = numDuplicateVal+1
        }
    }
 
    let dupCount = 0 + (nums.length * numDuplicateVal);

    while (i < nums.length || dupCount > 0) {
        if (i>0 && ((i % nums.length) === 0)) {
            i=0;
            startSwap=false;
        }
        if (nums[i] === val) {
            valueNeverFound = false;
            startSwap = true;
            dupCount--;
        }

        if (startSwap === true) {
            if (i !== nums.length-1) {
                let temp = nums[i]
                nums[i] = nums[i+1]
                nums[i+1] = temp;
            }
        }

        i++;
    }

    return result; 
}

console.log( 
    removeElement([3,3], 5)
);