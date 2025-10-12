// Brute O(n * m)
public class Solution
{
    public string ConvertToTitle(int columnNumber)
    {
        var res = new List<char> { 'A' };

        for (int i = 2; i <= columnNumber; i++)
        {
            for (int j = res.Count - 1; j >= 0; j--)
            {
                if (res[j] != 'Z')
                {
                    res[j] = (char)(res[j] + 1);
                    break;
                }
                else
                {
                    res[j] = 'A';
                    if (j == 0)
                    {
                        res.Insert(0, 'A');
                    }
                }
            }
        }

        return string.Join("", res);
    }
}

// Brute O(n)
public class Solution
{
    public string ConvertToTitle(int columnNumber)
    {
        var res = "";

        while (columnNumber > 0)
        {
            columnNumber--;
            var rightMostElement = columnNumber % 26;
            var c = (char)('A' + rightMostElement);
            res = c + res;
            columnNumber = columnNumber / 26;
        }

        return res;
    }
}
