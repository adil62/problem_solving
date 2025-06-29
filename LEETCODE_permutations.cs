using System;

class Permutations
{
    public static void GeneratePermutations(char[] array, int start, int end)
    {
        if (start == end)
        {
            Console.WriteLine(new string(array));
        }
        else
        {
            for (int i = start; i <= end; i++)
            {
                Swap(array, start, i);
                GeneratePermutations(array, start + 1, end);
                Swap(array, start, i);
            }
        }
    }

    private static void Swap(char[] array, int i, int j)
    {
        char temp = array[i];
        array[i] = array[j];
        array[j] = temp;
    }

    static void Main(string[] args)
    {
        string input = "ABC";
        char[] array = input.ToCharArray();
        GeneratePermutations(array, 0, array.Length - 1);
    }
}
