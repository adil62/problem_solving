/**
 * @param {number} n - a positive integer
 * @return {number}
 */
var hammingWeight = function(n) {
    let numOf1s = 0
    
    for (let i=0; i<32; i++) {
        numOf1s += (n >> i) & 1
    }
    
    return numOf1s;
};

// bitmask (n >> i)
