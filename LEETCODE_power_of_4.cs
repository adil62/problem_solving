public class Solution {
    public bool IsPowerOfFour(long n, long x=4) {
        if (n == 1 || x == n) {
            return true;
        } else if (x > n) {
            return false;
        }

        return IsPowerOfFour(n, x*4);
    }
}