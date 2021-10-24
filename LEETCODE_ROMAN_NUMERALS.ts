/**
 * Leetcode
 * Roman to Integer converter
 * Given a roman numeral string as i/p, the function would convert it to an integer.
 */

function romanToInt(s: string): number {
  let romanNumeral = s;
  let sum = 0;

  for (let i = 0; i < romanNumeral.length; i++) {
    let thisChar = romanNumeral[i];
    let prevChar = i !== 0 ? romanNumeral[i - 1] : null;

    if (isSubractableCase(thisChar, prevChar)) {
      sum += resolveToNumber(prevChar + thisChar);
      sum -= resolveToNumber(prevChar);
    } else {
      sum += resolveToNumber(thisChar);
    }
  }

  return sum;
}

// Takes 2 chars prevChar & thisChar I, V and checks if the numbers should be subracted.
function isSubractableCase(thisChar: string, prevChar: string): boolean {
  let subractMap = {
    V: "I",
    X: "I",
    L: "X",
    C: "X",
    D: "C",
    M: "C",
  };

  if (prevChar === subractMap[thisChar]) {
    return true;
  }

  return false;
}

// Takes in a roman numeral like V, IX resolves it to 5,9.
function resolveToNumber(roman: string) {
  let res = 0;

  switch (roman) {
    case "I":
      res = 1;
      break;
    case "V":
      res = 5;
      break;
    case "X":
      res = 10;
      break;
    case "L":
      res = 50;
      break;
    case "C":
      res = 100;
      break;
    case "D":
      res = 500;
      break;
    case "M":
      res = 1000;
      break;
    case "IV":
      res = 4;
      break;
    case "IX":
      res = 9;
      break;
    case "XL":
      res = 40;
      break;
    case "XC":
      res = 90;
      break;
    case "CD":
      res = 400;
      break;
    case "CM":
      res = 900;
      break;
  }

  return res;
}
