# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

# Time complex - O(log n) removing elements to be searched by half on each iteration
# Space - O(1)
def search(nums, target)
    found_at = -1
    mid = ((nums.length-1)/2).floor
    left = 0
    right = nums.length - 1

    while left <= right
        mid = (left + right) / 2

        if target > nums[mid]
            left = mid + 1
        elsif target < nums[mid]
            right = mid - 1
        elsif target == nums[mid]
            found_at = mid 
            break
        end
    end

    return found_at
end

# p search([1,2,3,4,5], 5)
p search([-1,0,3,5,9,12], 3)
# p search([5], 5)
# p search([-1,0,3,5,9,12], 0)
