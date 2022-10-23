# Given a sorted array of distinct integers and a target value, 
# return the index if the target is found. 
# If not, return the index where it would be if it were inserted in order.
# You must write an algorithm with O(log n) runtime complexity.
# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Input: nums = [1,3,5,6], target = 7
# Output: 4

def find_mid(length)
    mid = (length-1) / 2
    mid.floor
end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    mid = find_mid(nums.length)
    
    while mid !=0 do
        direction = nums[mid] < target ? 'right' : 'left'
        start_idx = direction == 'right' ? mid + 1 : 0
        end_idx = direction == 'right' ? nums.length-1 : mid

        if nums.length == 1
            return 0
        end

        if start_idx == end_idx - 1
            if target > nums[start_idx]
                if target > nums[end_idx]
                    return end_idx + 1
                end
                return end_idx
            else 
                return start_idx
            end
        end

        mid = find_mid((end_idx - start_idx) + 1)
        puts "MID IS #{mid}"
    end
end

puts search_insert([1,3,5,6], 2)

 
