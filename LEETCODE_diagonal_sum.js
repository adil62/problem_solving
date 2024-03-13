// TC: O(n)
// SC: O(1)
var diagonalSum = function(mat) {
    let sumPrimary = 0;
    let sumSecondary = 0;
    
    let i = 0,j = 0;
    while (i < mat.length && j < mat[0].length) {
        sumPrimary += mat[i][j]
        i++
        j++
    }
    
    i=0,j=mat[0].length-1;
    while (i <= mat.length && j >= 0) {
        let centerX = (mat.length-1)/2
        let centerY = (mat[0].length-1)/2
        if (i !== centerX && j !== centerY) {
            sumSecondary += mat[i][j]            
        };        
        i++
        j--
    }
    
    return sumPrimary + sumSecondary
};
