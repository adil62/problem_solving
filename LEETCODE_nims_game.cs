// TC: O(1)
// SC: O(1)
public class Solution {
    public bool CanWinNim(int n) 
    {
        if (n % 4 == 0) 
        {
            return false;
        }
        
        return true;
    }
}
