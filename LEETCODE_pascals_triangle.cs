// TC: O(n^2)
// SC: O(n^2)
public class Solution {
    public IList<IList<int>> Generate(int n) {
        int[][] result = new int[n][];

        for (int i=0; i<n; i++)
        {
            int[] arr = new int[i + 1];
            result[i] = arr;
            if (i == 0) {
                arr[i] = 1;
                continue;
            }
            for (int j=0; j<=i; j++) 
            {
                if (j == 0 || j == i) {
                    arr[j] = 1;
                } else {
                    int prevLeftEl = result[i-1][j-1];
                    int prevRightEl = result[i-1][j];
                    arr[j] = prevLeftEl + prevRightEl;
                }
            }
        }

        return result;
    }
}
