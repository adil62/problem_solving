// TC: O(n)
// SC: O(n)

var removeOuterParentheses = function(s) {
    let primitiveDecomposition = []
    const stack = []
    let primitiveStartIdx = 0
    for (let i=0; i<s.length; i++) {
        if (s[i] === '(') {
            stack.push('(')
        } else if (s[i] === ')') {
            stack.pop()
            if (stack.length === 0) {
                primitiveDecomposition.push(s.substring(primitiveStartIdx, (i+1) ))
                primitiveStartIdx = i+1
            }
        }
    }
    
    return primitiveDecomposition.map(str => str.substring(1, (str.length)-1)).join('')
};
