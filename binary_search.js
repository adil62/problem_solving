// Binary search algorithm: can search items in O(logn) time
// alternative algo like linear search will take O(n) time.

function binarySearch(sortedArr, element) {
    let start = 0;
    let end = arr.length - 1;
    let found = false;
    let foundAt = null;

    while (! found) {
        mid = Math.ceil((start + end) / 2)
        
        if (sortedArr[mid] === element) {
            found = true;
            foundAt = mid;
            break;
        } else if (Math.abs(start - end) === 1) {
            if (element === sortedArr[start] || element === sortedArr[end]) {
                found = true;
                break;
            } else {
                found = false
                break;
            }
        } else if (element < sortedArr[mid]) {
            end = mid;
        } else if (element > sortedArr[mid]) {
            start = mid;
        }
    }

    return found;
}