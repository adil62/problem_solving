// TC: O(n logn) 
// SC: O(n)
public class Solution {
    public int[] CountBits(int n) {
        int[] res = new int[n+1];
        
        for (var i=0; i< res.Length; i++)
        {
            res[i] = CountOnes(i);
        }
        
        return res;
    }
    
    // O(logn)
    public int CountOnes(int n)
    {
        int count = 0;
        while (n != 0)
        {
            count += n & 1;
            n >>= 1;
        }
        return count;
    }
}
