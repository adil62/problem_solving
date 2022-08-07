// There is an array with some numbers. All numbers are equal except for one. Try to find it!

// findUniq([ 1, 1, 1, 2, 1, 1 ]) === 2
// findUniq([ 0, 0, 0.55, 0, 0 ]) === 0.55
// It’s guaranteed that array contains at least 3 numbers.

// The tests contain some very huge arrays, so think about performance.

function findUniq(integerArr) {
    let intCountMap = {};

    for (let i=0; i< integerArr.length; i++) {
        intCountMap[integerArr[i]] = (intCountMap[integerArr[i]] ?? 0) + 1 
    }

    return findTheSmallest(intCountMap)
}

function findTheSmallest(intCountMap) {
    let intCountMapAsArr = Object.entries(intCountMap);
    let [smallestItemNumber, smallestItemCount] = intCountMapAsArr[0];

    for (let i=1; i < intCountMapAsArr.length; i++) {
        let [number, count] = intCountMapAsArr[i];
        if (Number(count) < Number(smallestItemCount)) {
            smallestItemNumber = number;
            smallestItemCount = count;
        }
    }

    return smallestItemNumber;
}

console.log(

    findUniq([ 1, 1, 1, 2, 1, 1,33,33 ])
)