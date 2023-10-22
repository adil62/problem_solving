# @param {String} s
# @return {Integer}

# Time complex - O(n)
# Space complex - O(n)
def longest_palindrome(s)
    char_count_map = Hash.new(0)
    result = 0
    single_digit = 0

    s.each_char do |c|
        char_count_map[c] = char_count_map[c] + 1
    end

    char_count_map.each do |key, val|
        is_odd = val % 2 != 0

        if is_odd
            single_digit = 1
            result = result + (val - 1)
        else
            result = result + val
        end
    end

    return result + single_digit
end

p longest_palindrome("abaab")