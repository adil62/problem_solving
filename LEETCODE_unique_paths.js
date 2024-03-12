// TC: O(n*m)
// SC: O(n*m)
var uniquePaths = function(m, n) {
    let table = Array(m).fill().map(() => Array(n).fill(null))
    table[0][0] = 1

    for (let row=0; row<m; row++) {
        for (let col=0; col<n; col++) {
            if (row === 0 && col === 0) continue;
            if (row === 0 || col === 0) {
                table[row][col] = 1
            } else {                
                table[row][col] = table[row-1][col] + table[row][col-1]
            }
        }
    }

    return table[m-1][n-1]
};
