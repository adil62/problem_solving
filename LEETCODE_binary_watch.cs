// public class Solution
// {
//     public IList<string> ReadBinaryWatch(int turnedOn) 
//     {
//         string res = "";
//         var result = new List<string>();

//         for (int i=0; i < turnedOn; i++)
//         {
//             res += 1;
//         }

//         for (int i=turnedOn; i < 11; i++)
//         {
//             res += 0;
//         }

//         var permutations = Permutations(res);

//         foreach (string permutation in permutations)
//         {
//             string hourBits = permutation.Substring(0, 4);
//             string minuteBits = permutation.Substring(4);

//             int hour = Convert.ToInt32(hourBits, 2);
//             int minute = Convert.ToInt32(minuteBits, 2);

//             if (hour < 12 && minute < 60)
//             {
//                 result.Add($"{hour}:{minute:D2}");
//             }
//         }


//         return result;
//     }

//     private List<string> Permutations(string input)
//     {
//         var result = new List<string>();
//         Permute(input.ToCharArray(), 0, input.Length - 1, result);
//         return result.Distinct().ToList();
//     }

//     private void Permute(char[] arr, int l, int r, List<string> result)
//     {
//         if (l == r)
//         {
//             result.Add(arr.ToString());
//             return  ;
//         }

//         for (int i = l; i <= r; i++)
//         {
//             Swap(arr, l, i);
//             Permute(arr, l + 1, r, result);
//             Swap(arr, l, i);
//         }
//     }

//     private void Swap(char[] arr, int i, int j)
//     {
//         char temp = arr[i];
//         arr[i] = arr[j];
//         arr[j] = temp;
//     }
// }

// o(1) space and time
public class Solution
{
    public IList<string> ReadBinaryWatch(int turnedOn) 
    {
        var result = new List<string>();

        for (int h=0; h<12; h++)
        {
            for (int m=0; m<60; m++)
            {
                var hourBits = CountOnBits(h);
                var minuteBits = CountOnBits(m);

                if (hourBits + minuteBits == turnedOn)
                {
                    result.Add($"{h}:{m:D2}");
                }
            }
        }

        return result;
    }

    private int CountOnBits(int n)
    {
        int count = 0;
        while (n > 0)
        {
            count += n & 1;
            n >>= 1;
        }
        return count;
    }
}
