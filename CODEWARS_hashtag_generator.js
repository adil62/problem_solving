// The marketing team is spending way too much time typing in hashtags.
// Let's help them with our own Hashtag Generator!

// Here's the deal:

// It must start with a hashtag (#).
// All words must have their first letter capitalized.
// If the final result is longer than 140 chars it must return false.
// If the input or the result is an empty string it must return false.
// EG: " Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"


function generateHashtag (str) {
    str = removeAllExtraSpaces(str);
    const words = str.split(/[ ]+/).map(item => capitalizeFirst(item)).join('');
  
    if (words.length && words.length < 140) {
       return '#' + words;
    }

    return false;
}

function removeAllExtraSpaces(str) {
  return str.replace(/[ ]+/, ' ');
}

function capitalizeFirst(str) {
    if (str.trim() === '') return ''
    return str.replace(/[a-zA-Z]/, str[0].toUpperCase());
}

console.log(
    generateHashtag("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
)