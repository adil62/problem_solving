// TC: O(n^2)
// SC: O(n)
public class Solution {
    public int MissingNumber(int[] nums) 
    {
        var range = createRange(0, nums.Length+1);

        for (var i=0; i<range.Length; i++)
        {
            var exists = Array.IndexOf(nums, range[i]) > -1;
            if (!exists)
            {
                return range[i];
            }
        }
        
        return -1;
    }
    
    private int[] createRange(int start, int end)
    {
        var arr = new int[end-start];
        
        for (var i=0; i<arr.Length; i++)
        {
            arr[i] = start+i;
        }
        
        return arr;
    }
}
