# Time complexity: O(stones.length)
# Space complexity: O(jewels.length)

# @param {String} jewels
# @param {String} stones
# @return {Integer}
def num_jewels_in_stones(jewels, stones)
    res = 0
    jewels_arr = jewels.split('')
    stones.chars.each do |stone|
        if jewels_arr.include?(stone)
            res += 1
        end
    end
    return res
end
