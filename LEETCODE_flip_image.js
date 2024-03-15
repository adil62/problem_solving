// TC: O(n*m)
// SC: O(n*m)
/**
 * @param {number[][]} image
 * @return {number[][]}
 */
var flipAndInvertImage = function(image) {
    let res = [];
    
    for (let i=0; i<image.length; i++) {
        let flipped = image[i].reverse()
        for (let j=0; j<flipped.length; j++) {
            flipped[j] = !flipped[j] 
        }
        res.push(flipped)
    }
    
    return res;
};
