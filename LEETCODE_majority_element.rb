# @param {Integer[]} nums
# @return {Integer}
# Time complexity - O(n)
# Space complexity - O(n)
def majority_element(nums)
    map = Hash.new(0)

    nums.each do |num|
        map[num] = map[num] + 1
    end

    biggest_key = 0
    biggest_val = 0
    map.each do |key, value|
        if value > biggest_val
            biggest_key = key
            biggest_val = value
        end
    end

    return biggest_key
end

# Time complexity - O(nlogn)
# Space complxity - O(1)
# more than n/2 times occuring element is the majority element so if we sort and take the mid it would be the majority
def majority_element(nums)
    nums = nums.sort

    return nums[nums.length/2]
end

p majority_element([1,1,2,2,3,3,4,4])

tenth,diploma,photo,aadhar.