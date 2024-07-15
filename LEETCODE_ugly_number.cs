// TC: O(logn)
// SC: O(1)
public class Solution 
{
    public bool IsUgly(int n) {
        if (n == 0) 
        {
            return false;
        }
        
        int[] primes = {2,3,5};
        
        foreach (var prime in primes)
        {
            while (n % prime == 0)
            {
                n = n/prime;
            }
        }
        
        return n == 1;
    }
}
