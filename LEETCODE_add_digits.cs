// Time complexity: O(n)
// Space complexity: O(n)

public class Solution {
    public int AddDigits(int num) 
    {
        var res = num;
        
        while (res.ToString().Length != 1)
        {
            var numArr = res.ToString().Select(digit => int.Parse(digit.ToString())).ToArray();
            var sum = 0;
            for (var i=0; i<numArr.Length; i++) 
            {
                sum = sum + numArr[i];
            }
            res = sum;
        }
        
        return res;
    }
}
