// Given a string of words, you need to find the highest scoring word.
// Each letter of a word scores points according to its position in the alphabet: a = 1, b = 2, c = 3 etc.
// You need to return the highest scoring word as a string.
// If two words score the same, return the word that appears earliest in the original string.
// All letters will be lowercase and all inputs will be valid.

function high(x) {
    const words = x.split(' ');
    const wordScoresMap = words.reduce((acc, word) => ({ ...acc, [word]: getWordScore(word) }), {});
    const sortedResult = sortByScore(wordScoresMap);
    const highestWord = sortedResult[0][0];

    return highestWord;
}

function sortByScore(wordScoresMap) {
    return Object.entries(wordScoresMap).sort((a, b) => {
        if (a[1] > b[1]) {
            return -1;
        } else if (a[1] === b[1]) {
            return 0;
        } else {
            return 1;
        }
    })
}

function getWordScore(word) {
    return word.split('').reduce((a, b) => { return a + getCharScorePoint(b) }, 0)
}

function getCharScorePoint(char) {
    return char.charCodeAt(0) - 96;
}