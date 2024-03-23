// TC: O(1)
// SC: O(1)
var isPowerOfTwo = function(n) {     
    let setBitCount = 0;
    while (n) {
        setBitCount += n & 1;
        n = n >> 1;
    }
    
    return setBitCount === 1;
};
