// TC: O(n)
// SC O(1)
public class NumArray
{
    int[] PREFIX_SUM;

    public NumArray(int[] nums)
    {
        PREFIX_SUM = new int[nums.Length + 1];

        for (int i = 0; i < nums.Length; i++)
        {
            PREFIX_SUM[i + 1] = PREFIX_SUM[i] + nums[i];
        }
    }

    public int SumRange(int left, int right)
    {
        return PREFIX_SUM[right + 1] - PREFIX_SUM[left];
    }
}
