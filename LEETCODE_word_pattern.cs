// Time com: O(n+m)
// Space com: O(n+m)
public class Solution
{
    public bool WordPattern(string pattern, string s) 
    {
        Dictionary<string, string> charToWordMap = new Dictionary<string, string>();
        Dictionary<string, char> wordToCharMap = new Dictionary<string, char>();

        string[] words = s.Split(' ');

        if (pattern.Length != words.Length)
        {
            return false;
        }
        
        for (var i=0; i<pattern.Length; i++)
        {
            var currChar = pattern[i];
            var correspondingWord = words[i];
            
            if (charToWordMap.ContainsKey(currChar.ToString()))
            {
                var existingValue = charToWordMap[currChar.ToString()];
                if (existingValue != correspondingWord)
                {
                    return false;
                }
            }
            else
            {
                charToWordMap.Add(currChar.ToString(), correspondingWord);
            }
            
            if (wordToCharMap.ContainsKey(correspondingWord))
            {
                if (wordToCharMap[correspondingWord] != currChar)
                {
                    return false;
                }
            }
            else
            {
                wordToCharMap[correspondingWord] = currChar;
            }
        }
        
        return true;
    }
}
