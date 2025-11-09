// TC: O(n)
public class Solution
{
    public string ToHex(int num)
    {
        string[] hexMap = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f" };
        List<string> res = new List<string>();

        uint n = (uint)num;

        while (n > 0)
        {
            var rem = n % 16;
            res.Add(hexMap[rem]);
            n = n / 16;
        }

        res.Reverse();
        return string.Join("", res);
    }
}
