// SC: O(1)
// TC: o(n)
public class Solution
{
    public int TitleToNumber(string columnTitle)
    {
        int res = 0;
        for (int i = 0; i < columnTitle.Length; i++)
        {
            char c = columnTitle[i];
            int cValue = Convert.ToInt32(char.ToUpper(c)) - 64;
            res += (int)(Math.Pow(26, columnTitle.Length - 1 - i) * cValue);
        }

        return res;
    }
}
