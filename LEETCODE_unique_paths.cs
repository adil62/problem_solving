// Leetcode unique paths problem
// Unoptimised solution:
// TC: O(2^n)
public class Solution {
    public int UniquePaths(int m, int n) {
        return Helper(0, 0, m , n);
    }

    public int Helper(int r, int c, int m, int n) 
    {
        if (r == m - 1 && c == n - 1) return 1;
        if (r >= m || c >= n) return 0;

        return Helper(r+1, c, m, n) + Helper(r, c+1, m, n);
    }
}

// Optimized solution:
// TC: O(m*n)
// SC: O(m*n)
public class Solution
{
    private int _m, _n;
    private int[,] memo;

    public Solution() { }

    public int UniquePaths(int m, int n)
    {
        _m = m;
        _n = n;
        memo = new int[m, n];
        for (int i = 0; i < m; i++)
            for (int j = 0; j < n; j++)
                memo[i, j] = -1;

        return Helper(0, 0);
    }

    public int Helper(int currRow, int currCol)
    {
        // Out of bounds
        if (currRow > _m - 1 || currCol > _n - 1) return 0;

        // Reached
        if (currRow == _m - 1 && currCol == _n - 1) return 1;

        if (memo[currRow, currCol] != -1)
        {
            return memo[currRow, currCol];
        }

        var res = Helper(currRow + 1, currCol) + Helper(currRow, currCol + 1);
        memo[currRow, currCol] = res;
        return res;
    }
}
