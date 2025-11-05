public class Solution
{
    public bool IsPowerOfThree(int n)
    {
        int res = 0;

        while (res < n)
        {
            res = res * 3;

            if (res == n) return true;
        }

        return false;
    }
}

// O(log3 n)
public class Solution
{
    public bool IsPowerOfThree(int n)
    {
        if (n <= 0) return false;

        while (n % 3 == 0)
        {
            n = n / 3;
        }

        return n == 1;
    }
}
