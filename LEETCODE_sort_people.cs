// TC: O(n logn)
// SC: O(n)
public class Solution {
    public string[] SortPeople(string[] names, int[] heights) {
        Dictionary<int, string> ageToNameDict = new Dictionary<int, string> {};
        
        for(var i=0; i<names.Length; i++)
        {
            ageToNameDict.Add(heights[i], names[i]);
        }
        
        Array.Sort(heights);
        Array.Reverse(heights);
        
        string[] result = new string[heights.Length];
        
        for (var j=0; j<heights.Length; j++)
        {
            result[j] = ageToNameDict[heights[j]];
        }
        
        return result;
    }
}
