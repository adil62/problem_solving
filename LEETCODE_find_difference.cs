public class Solution {
    public char FindTheDifference(string s, string t) {
        Dictionary<char, int> map = new Dictionary<char, int>();

        for (int i = 0; i < s.Length; i++)
        {
            if (map.ContainsKey(s[i]))
                map[s[i]] = map[s[i]] + 1;
            else
                map[s[i]] = 1;
        }

        for (int i = 0; i < t.Length; i++)
        {
            if (map.ContainsKey(t[i]))
                map[t[i]] = map[t[i]] - 1;
            else
                map[t[i]] = -1;
        }

        Console.WriteLine(map);

        foreach (var keyval in map)
        {
            if (keyval.Value != 0)
            {
                return keyval.Key;
            }
        }

        return ' ';
    }
}
// TC: O(n)
// SC: O(1)
