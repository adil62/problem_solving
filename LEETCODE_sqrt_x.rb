# Given a non-negative integer x, 
# return the square root of x rounded down to the nearest integer. 
# The returned integer should be non-negative as well.
# Input: x = 4
# Output: 2

# You must not use any built-in exponent function or operator.

# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    res = 1

    if x == 0 
        return 0
    end

    for num in 1..x do
        num_squared = num * num
        if num_squared == x
            return num
        elsif num_squared > x
            return num - 1
        end
    end

    return res
end

p my_sqrt(1024) #should return 4
