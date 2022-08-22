// Should convert dash/underscore delimited words into camel casing.
// The first word within the output should be capitalized only if the original word was capitalized
// (known as Upper Camel Case, also often referred to as Pascal case).

// Examples
// "the-stealth-warrior" gets converted to "theStealthWarrior"
// "The_Stealth_Warrior" gets converted to "TheStealthWarrior"

function toCamelCase(str) {
    let strArr = str.split('');
    let res = '';

    for (let i = 0; i < strArr.length; i++) {
        const currChar = strArr[i];
        const nextChar = i !== (strArr.length - 1) ? strArr[i + 1] : '';

        if (i === 0 && (strArr[0] === strArr[0].toUpperCase())) {
            res += strArr[0].toUpperCase();
        } else if (['_', '-'].includes(currChar)) {
            res += strArr[i + 1].toUpperCase();
            strArr[i + 1] = '';
        } else {
            res += currChar;
        }
    }

    return res;
}

toCamelCase('the-stealth-warrior');