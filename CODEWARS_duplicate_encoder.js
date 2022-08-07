// The goal of this exercise is to convert a string to a new string 
// where each character in the new string is "(" if that character appears only once in the original string, 
// or ")" if that character appears more than once in the original string. 
// Ignore capitalization when determining if a character is a duplicate.

// Examples
// "din"      =>  "((("
// "recede"   =>  "()()()"
// "Success"  =>  ")())())"
// "(( @"     =>  "))((" 

function duplicateEncode(word) {
    let res = '';
    let charToCountMap = {};

    for (let i=0; i<word.length; i++) {
        let char = word[i].toLowerCase();
        charToCountMap[char] = (charToCountMap[char] ? charToCountMap[char] : 0) + 1;
    }

    for (let i=0; i<word.length; i++) {
        let char = word[i].toLowerCase();
        if (charToCountMap[char] > 1) {
            res += ')'
        } else {
            res += '('
        }
    }

    return res;
}

console.log(
    duplicateEncode('(( @')
)

// alternate solution :
function duplicateEncode(word){
    return word
      .toLowerCase()
      .split('')
      .map( function (a, i, w) {
        return w.indexOf(a) == w.lastIndexOf(a) ? '(' : ')'
      })
      .join('');
  }