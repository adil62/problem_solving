// TC: O(n)
// SC: O(1)
public class Solution {
    public int MinimumOperations(int[] nums) {
        int totalOperations = 0;

        foreach (int num in nums) {
            int remainder = num % 3;
            if (remainder != 0) {
                totalOperations += 1;
            }
        }

        return totalOperations;
    }
}
