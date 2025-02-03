public class Solution
{
    public void SetZeroes(int[][] matrix) {
        bool[] rowsToBeZeroed = new bool[matrix.Length];
        bool[] columnsToBeZeroed = new bool[matrix[0].Length];

        for (var i=0; i<matrix.Length; i++) 
        {
            for (var j=0; j<matrix[0].Length; j++) 
            {
                if (matrix[i][j] == 0) 
                {
                    rowsToBeZeroed[i] = true;
                    columnsToBeZeroed[j] = true;
                }
            }
        }

        for (var i=0; i<rowsToBeZeroed.Length; i++) 
        {
            if (rowsToBeZeroed[i] != true) {
                continue;
            }
            var rowIdx = i;

            for (var col=0; col< matrix[0].Length; col++) 
            {
                matrix[rowIdx][col] = 0;
            }
        }

        for (var i=0; i<columnsToBeZeroed.Length; i++) 
        {
            if (columnsToBeZeroed[i] != true) {
                continue;
            }
            var colIdx = i;

            for (var row=0; row< matrix.Length; row++) 
            {
                matrix[row][colIdx] = 0;
            }
        }
    }
}
