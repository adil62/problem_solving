/**
 * Palindrome - leetcode
 * Determines if a number x is a palindrome number
 * ie; 121 == 121(reversed) so it is a palindrome number.
 */
function isPalindrome(x: number): boolean {
  let numberAsString: string = x + "";
  let reversedAsString: string = findReverse(numberAsString);

  if (reversedAsString === numberAsString) {
    return true;
  }

  return false;
}

function findReverse(numAsString: string): string {
  let res: string = "";

  for (let i = numAsString.length - 1; i >= 0; i--) {
    res += numAsString[i];
  }

  return res;
}
