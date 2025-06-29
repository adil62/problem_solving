// TC: O(log3(n))
// SC: O(log3(n)) // depth of recursion stack
public class Solution {
    public bool IsPowerOfThree(long n, long x = 3) {
        if (x == n || n == 1) 
        {
            return true;
        }
        else if (x > n) {
            return false;
        }

        return IsPowerOfThree(n, x*3);
    }
}