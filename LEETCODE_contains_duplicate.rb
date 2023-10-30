# @param {Integer[]} nums
# @return {Boolean}

# Time complexity - O(log n)
# Space - O(1)
def contains_duplicate(nums)
    nums = nums.sort
    
    for i in 0..nums.length - 1
        if nums[i] == nums[i+1]
            return true
        end
    end

    return false
end
