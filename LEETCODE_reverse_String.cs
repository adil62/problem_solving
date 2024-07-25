// TC: O(n)
// SC: O(1)
public class Solution {
    public void ReverseString(char[] s) {
        int start = 0;
        int end = s.Length-1;
        while (start < end) {
            char temp = s[start];
            s[start] = s[end];
            s[end] = temp;
            start++;
            end--;
        }
    }
}
