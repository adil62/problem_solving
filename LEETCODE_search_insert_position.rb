# Given a sorted array of distinct integers and a target value, 
# return the index if the target is found. 
# If not, return the index where it would be if it were inserted in order.
# You must write an algorithm with O(log n) runtime complexity.
# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Input: nums = [1,3,5,6], target = 7
# Output: 4
# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}

def find_mid(start_idx, end_idx)
    mid = (start_idx + (end_idx - start_idx).abs / 2)
    mid.floor
end

def search_insert(nums, target)
    mid = find_mid(0, nums.length)

    nums.each_with_index do |num, index|
        if num == target
            return index
        end
    end
    
    if nums.length == 1
        if target > nums[0]
            return 1
        else
            return 0
        end
    end

    if nums.length == 2
        if target > nums[0]
            if target > nums[1]
                return 2
            end
            return 1
        else 
            return 0
        end
    end

    while mid !=0 do
        direction = nums[mid] < target ? 'right' : 'left'
        start_idx = direction == 'right' ? mid + 1 : 0
        end_idx = direction == 'right' ? nums.length-1 : mid -1

        if nums.length == 1
            return 0
        end

        if start_idx == end_idx - 1 || start_idx == end_idx
            if target > nums[start_idx]
                if target > nums[end_idx]
                    return end_idx + 1
                end
                return end_idx
            else 
                return start_idx
            end
        end

        mid = find_mid(start_idx, end_idx)
    end
end
