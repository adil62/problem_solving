/**
 * Sorts an array [2, 9, 9, 1, 6] by duplicates first and if same duplicate count is found should keep their insertion order.
 * expected output [9,2,1,6]
 */

function calc(arr) {
  let elemToDupCountMap = new Map();

  for (i = 0; i < arr.length; i++) {
    let key = arr[i];
    let value = elemToDupCountMap.get(key) ? elemToDupCountMap.get(key) + 1 : 1;
    elemToDupCountMap.set(key, value);
  }

  return sort(elemToDupCountMap);
}

function sort(elemToDupCountMap) {
  let elemAsArr = Array.from(elemToDupCountMap.entries());
  let resArr = [];

  console.log(elemAsArr);

  elemAsArr = quickSort(elemAsArr);

  resArr = elemAsArr.map((item) => item[0]);

  return resArr;
}

function quickSort(arr) {
  if (arr.length < 2) {
    return arr;
  } else {
    let pivotIdx = getRandom(arr.length);
    let pivot = arr[pivotIdx];
    let [leftArr, rightArr] = partition(pivotIdx, arr);

    return [...quickSort(leftArr), ...[pivot], ...quickSort(rightArr)];
  }
}

function getRandom(maxInt) {
  return Math.floor(Math.random() * maxInt);
}

function partition(pivotIdx, arr) {
  let leftArr = [];
  let rightArr = [];
  let pivot = arr[pivotIdx];

  for (let i = 0; i < arr.length; i++) {
    if (i === pivotIdx) continue;

    if (pivot[1] < arr[i][1]) {
      leftArr.push(arr[i]);
    } else if (pivot[1] === arr[i][1]) {
      // for when same count elements is bieng compared and to keep order.
      if (i < pivotIdx) {
        leftArr.push(arr[i]);
      } else {
        rightArr.push(arr[i]);
      }
    } else {
      rightArr.push(arr[i]);
    }
  }

  return [leftArr, rightArr];
}

console.log(calc([2, 9, 9, 1, 6]));

// expected output :  9216
