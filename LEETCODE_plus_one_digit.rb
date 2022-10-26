##
# You are given a large integer represented as an integer array digits, 
# where each digits[i] is the ith digit of the integer. 
# The digits are ordered from most significant to least significant in left-to-right order. 
# The large integer does not contain any leading 0's.
# Increment the large integer by one and return the resulting array of digits.
# Input: digits = [1,2,3]
# Output: [1,2,4]
# Input: digits = [9]
# Output: [1,0]
##

# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    lsb = digits[-1]
    count_of_nines = 0

    if lsb != 9
        digits[-1] = digits[-1] + 1
    else
        (digits.length - 1).downto(0).each do |idx|
            digit = digits[idx]
            
            if digit === 9
                count_of_nines = count_of_nines + 1
                digits[idx] = 0
            else
                digits[idx] = digits[idx] + 1
                break
            end
        end
    end

    if count_of_nines === digits.length
        digits.prepend(1)
    end

    return digits
end

p plus_one([9,9,9])
