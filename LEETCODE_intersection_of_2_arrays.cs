// TC: O(n)
// SC: O(n)
public class Solution
{
    public int[] Intersection(int[] nums1, int[] nums2) 
    {
        HashSet<int> set1 = new HashSet<int>();
        HashSet<int> intersect = new HashSet<int>();
        
        for (var k=0; k<nums1.Length; k++)
        {
            set1.Add(nums1[k]);
        }
        
        for (var j=0; j<nums2.Length; j++)
        {
            if (set1.Contains(nums2[j])) {
                intersect.Add(nums2[j]);
            }
        }
        
        int[] result = new int[intersect.Count];
        int i = 0;
        foreach (int num in intersect) {
            result[i++] = num;
        }
        
        return result;
    }
}
