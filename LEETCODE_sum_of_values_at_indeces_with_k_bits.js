// TC: O(n * log(n))
// SC: O(n)
/**
 * @param {number[]} nums
 * @param {number} k
 * @return {number}
 */
var sumIndicesWithKSetBits = function(nums, k) {
    let indecesWithKSetBits = []
    let sumOfIndecesWithKSetBits = 0
    
    for (let i=0; i<nums.length; i++) {
        if (getSetBits(toBinary(i)) === k) {
            indecesWithKSetBits.push(i);
        }
    }
    
    for (let i=0; i<indecesWithKSetBits.length; i++) {
        sumOfIndecesWithKSetBits += nums[indecesWithKSetBits[i]]
    }
    
    return sumOfIndecesWithKSetBits;
};

function getSetBits(bin) {
    let res = 0
    for (let i=0; i<bin.length; i++) {
        if (bin[i]==='1') {
            res += 1
        }
    }
    return res;
}

function toBinary(num) {
    return num.toString(2);
}

// O(n)
// O(1)
var sumIndicesWithKSetBits = function(nums, k) {
    let sumOfIndecesWithKSetBits = 0
    
    for (let i=0; i<nums.length; i++) {
        let count = 0;
        for (let j=0; j<32; j++) {
            count += (i >> j) & 1; // shift by i & get the lsb(&)
        }
        console.log(count)
        if (count === k) {
            sumOfIndecesWithKSetBits += nums[i]
        }
    }
     
    return sumOfIndecesWithKSetBits;
};
