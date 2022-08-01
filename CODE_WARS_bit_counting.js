// Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. 
// You can guarantee that input is non-negative.
// Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case


function countBits(n) {
    let inBinary = dec2bin(n);
    return countOnes(inBinary)
};

function countOnes(binaryStr) {
    let inArr = binaryStr.split('');
    let res = inArr.reduce((prevItem, nextItem) => {
        if (nextItem === '1') {
            return prevItem + 1;
        }

        return prevItem;
    }, 0);

    return res;
}

function dec2bin(dec) {
    return dec.toString(2);
}

countBits(111);
