// TC: O(log(num))
// TC: O(1)
var numberOfSteps = function(num) {
    let res = 0;
    
    while (num != 0) {
        // GET LSB, if it is one then odd, else even         
        res += (num & 1) ? 2 : 1;
        // divide by 2
        num = num >> 1;
    }
    
    return res-1
};
