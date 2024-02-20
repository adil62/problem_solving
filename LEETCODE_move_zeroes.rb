# Time complexity O(n)
# Space complexity O(1)
# 2 pointers solution
def move_zeroes(nums)
    left = 0
    for i in 0..(nums.length-1)
        if nums[i] != 0
            nums[i], nums[left] = nums[left], nums[i]
            left += 1
        end
    end
    return nums
end
