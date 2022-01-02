function mergeSort(arr) {
    if (arr.length <= 1) {
        return arr
    }

    let arrMid = Math.floor(arr.length / 2)
    let left = mergeSort(arr.slice(0, arrMid))
    let right = mergeSort(arr.slice(arrMid))

    return merge(left, right)
}

function merge(leftArr, rightArr) {
    let rightIndex = 0;
    let leftIndex = 0;
    let res = []

    while (leftIndex < leftArr.length && rightIndex < rightArr.length) {
        let leftEle = leftArr[leftIndex]
        let rightEle = rightArr[rightIndex]

        if (leftEle < rightEle) {
            leftIndex++
            res.push(leftEle)
        } else {
            rightIndex++
            res.push(rightEle)
        }
    }

    return [...res, ...leftArr.slice(leftIndex), ...rightArr.slice(rightIndex)];
}

res = mergeSort([4,3,5,9,1])

console.log(res)