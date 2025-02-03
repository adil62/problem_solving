// TC: O(n logn)
// SC: O(n)
public class Solution {
    public int[] FrequencySort(int[] nums) {
        Dictionary<int, int> numberToFrequencyDict = new Dictionary<int, int>();
        
        foreach (var num in nums)
        {
            if (numberToFrequencyDict.ContainsKey(num))
            {
                numberToFrequencyDict[num]++;
            }
            else
            {
                numberToFrequencyDict[num] = 1;
            }
        }
        
        Array.Sort(nums, (a, b) => 
        {
            int freqA = numberToFrequencyDict[a];
            int freqB = numberToFrequencyDict[b];

            if (freqA == freqB)
            {
                return b.CompareTo(a); 
            }
            else
            {
                return freqA.CompareTo(freqB);
            }
        });
        
        return nums;  
    }
}
