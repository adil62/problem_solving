function ArrayChallenge(arr) {
  let { minVal, minIndex } = findsmallest(arr);
  let remainingArrAfterSmallest = arr.slice(minIndex);
  let { maxVal: biggestVal, maxIndex: biggestValIdx } = findBiggest(
    remainingArrAfterSmallest
  );

  if (biggestVal > minVal) {
    return biggestVal - minVal;
  } else {
    return -1;
  }
}

function findBiggest(arr) {
  let maxVal = arr[0];
  let maxIndex = 0;

  for (let i = 0; i < arr.length; i++) {
    if (arr[i] > maxVal) {
      maxVal = arr[i];
      maxIndex = i;
    }
  }

  return { maxVal, maxIndex };
}

function findsmallest(arr) {
  let minVal = arr[0];
  let minIndex = 0;

  for (let i = 0; i < arr.length; i++) {
    if (arr[i] < minVal) {
      minVal = arr[i];
      minIndex = i;
    }
  }

  return { minVal, minIndex };
}

console.log(ArrayChallenge([5, 40, 50, 100, 1]));
