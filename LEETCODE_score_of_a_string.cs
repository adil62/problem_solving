// TC: O(n)
// sC: O(1)

public class Solution 
{
    public int ScoreOfString(string s) 
    {
        var score = 0;
        for (var i=0; i<s.Length-1; i++)
        {
            var currScore = Math.Abs((int)s[i] - (int)s[i+1]);
            
            score = score + currScore;
        }
        
        return score;
    }
}
