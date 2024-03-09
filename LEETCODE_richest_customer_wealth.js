// TC: O(n*m), n number of customers, m is average n of accounts per cust
// SC: O(1)

/**
 * @param {number[][]} accounts
 * @return {number}
 */
var maximumWealth = function(accounts) {
    let richest = 0
    
    for (let i=0; i<accounts.length; i++) {
        let sum = 0
        for (let j=0; j<accounts[i].length; j++) {
            sum += accounts[i][j]
        }
        if (sum>richest) {
            richest = sum
        }
    }
    
    return richest;
};
