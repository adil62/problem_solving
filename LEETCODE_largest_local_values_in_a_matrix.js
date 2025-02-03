var largestLocal = function(grid) {
    let newGridSize = grid.length-2;
    let maxlocal = createMatrix(newGridSize, newGridSize);
    
    for (let i=0; i<newGridSize; i++) {
        for (let j=0; j<newGridSize; j++) {
            maxlocal[i][j] = findMax(grid, i, j, 3)
        }
    }
    
    return maxlocal
};

function findMax(grid,i,j,size) {
    let max = 0;
    for (let k=i; k<i+size ; k++) {
        for (let l=j; l<j+size ; l++) {
            max = Math.max(grid[k][l], max)
        }
    }
    return max;
}

function createMatrix(m, n) {
    let arr = []
    for (let i=0; i<m; i++) {
        arr[i] = []
        for (let j=0; j<n; j++) {
            arr[i][j] = undefined
        }
    }
    return arr;
}
