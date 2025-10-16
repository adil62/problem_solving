public class Solution {
    public bool ScoreBalance(string s) {
        for (int i=0; i<s.Length; i++)
        {
            var firstHalfScore = 0;
            var secondHalfScore = 0;    

            for (int j1=0; j1<=i; j1++)
            {
                Console.WriteLine($"J1: {char.ToLower(s[j1]) - 'a' + 1}");
                firstHalfScore += char.ToLower(s[j1]) - 'a' + 1;
            }

            for (int j2=i+1; j2 < s.Length; j2++)
            {
                Console.WriteLine($"J2: {char.ToLower(s[j2]) - 'a' + 1}");
                secondHalfScore += char.ToLower(s[j2]) - 'a' + 1;
            }

            if (firstHalfScore == secondHalfScore)
            {
                return true;
            } 
        }

        return false;
    }
}

// TC: O(n^2)
// SC: o(1)
