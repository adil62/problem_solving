using System.Collections.Generic;

public class Solution {
    public List<int[]> FindPermutations(int[] nums)
    {
        List<int[]> res = new List<int[]>();
        Solve(res, nums, 0);
        
        return res;
    }

    public void Solve(List<int[]> res, int[] nums, int index)
    {
        if (index == nums.Length) 
        {
            result.Add((int[])nums.Clone());
            return;
        }
        for (int j=index; j<nums.Length; j++) 
        {
            Swap(nums, index, j);
            Solve(res, nums, index+1);
            Swap(nums, index, j);
        }
    }

    public void Swap(int[] nums, int i, int j) 
    {
        int temp =  nums[i];
        nums[i] = nums[j];
        nums[j] = temp;
    }
}
