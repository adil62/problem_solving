# 2 pointer
# Time & space complexity: O(n), O91
# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    left = 0
    
    for i in 0..(nums.length-1)
        if nums[i] != val
            nums[left], nums[i] = nums[i], nums[left]
            left += 1
        end
    end
    
    return left
end
