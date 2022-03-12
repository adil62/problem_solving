//  Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.
//  An input string is valid if:
//  Open brackets must be closed by the same type of brackets.
//  Open brackets must be closed in the correct order.
//  Example 1:
//      Input: s = "({})"
//      Output: true

/**
 * @param {string} s
 * @return {boolean}
 */

 var isValid = function(s) {
    let isValid = true;
    let openedStk = [];
    
    for (let i=0; i < s.length; i++) {
        if (bracketTypeIsOpening(s[i])) {
            openedStk.push(s[i])
            continue;
        }
        
        if (!isPair(s[i], openedStk.pop())) {
            isValid = false;
            break;
        }
    }
    
    if (openedStk.length) {
        isValid = false;
    }
    
    return isValid; 
};

function isPair(str1, str2) {
    let res = false;
    let curlyPair = ['{', '}'];
    let roundPair = ['(', ')'];
    let squarePair = ['[', ']'];
    
    if (roundPair.includes(str1) && roundPair.includes(str2)) {
        res = true
    } else if (squarePair.includes(str1) && squarePair.includes(str2)) {
        res = true
    } else if (curlyPair.includes(str1) && curlyPair.includes(str2)) {
        res = true
    }
    
    return res;
}

function bracketTypeIsOpening(str1) {
   return ['(', '{', '['].includes(str1)
}