// TC: O(n2)
// SC: O(n)
var finalPrices = function(prices) {
    let res = [];
    for (let i=0; i<prices.length; i++) {
        let diff = prices[i]
        for (let j=i+1; j<prices.length; j++) {
            if (prices[j] <= prices[i]) {
                diff = prices[i] - prices[j]
                break
            }
        }
        res.push(diff)
    }
    
    return res
};
