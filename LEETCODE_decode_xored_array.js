// TC: O(n)
// SC: O(n)
var decode = function(encoded, first) {
    const res = [first]
    
    encoded.forEach(encode => {
       res.push(encode ^ res[res.length - 1])
    });
    
    return res
};


// a ^ b = c
// c ^ a = b
// c ^ b = a
