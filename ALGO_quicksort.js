/**
 * QUICKSORT: sorts array at o(nlogn) time best & average case, worstcase: o(n2)
 * Takes a pivot element partitions the array based on that pivotIndex, recursively sorts it.
 */
function quickSort(arr) {
	if (arr.length < 2) {
		return arr
	} else {
		let pivotIdx = getRandom(arr.length)
		let pivot = arr[pivotIdx]
		let [leftArr, rightArr] = partition(pivotIdx, arr)
		
		return [...(quickSort(leftArr)) , ...[pivot] , ...(quickSort(rightArr))]
	}
}

function getRandom(maxInt) {
	return Math.floor(Math.random() * maxInt)
}

function partition(pivotIdx, arr) {
	let leftArr = []
	let rightArr = []
	let pivot = arr[pivotIdx];

	for (let i=0; i< arr.length; i++) {
		if (i === pivotIdx) continue;

		if (pivot > arr[i]) {
			leftArr.push(arr[i])
		} else {
			rightArr.push(arr[i])
		}
	}

	return [leftArr, rightArr]
}

arr  = [1,10,9,8,7,838383838,6,5,4,99999,3,2,1]

sorted  = quickSort(arr)

console.log(sorted)