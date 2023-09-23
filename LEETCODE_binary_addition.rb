# Time complexity: O(max_length(a, b))
# Space complexity: O(max_length(a, b))

# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    biggest_str_len = a.length > b.length ? a.length : b.length
    a_arr = convert_to_array(prefix_zeros(a, biggest_str_len)).reverse
    b_arr = convert_to_array(prefix_zeros(b, biggest_str_len)).reverse
    result = []
    carry = 0
 
    biggest_str_len.times do |index|
        sum = 0
        if a_arr[index] == "0" && b_arr[index] == "0"
            sum = 0 + carry
            carry = 0
        elsif a_arr[index] == "1" && b_arr[index] == "0" || a_arr[index] == "0" && b_arr[index] == "1"
            if carry == 1
                sum = 0
            else
                sum = 1
            end
        elsif a_arr[index] == "1" && b_arr[index] == "1"
            sum = 0 + carry
            carry = 1
        end
        result.push(sum)
    end

    result.push(carry) if carry == 1

    return result.reverse.join("")
end

def convert_to_array(string)
    string.split("")
end

def prefix_zeros(string, length)
    zero_count = length - string.length
    zero_count.times do 
        string = '0' + string
    end
    return string
end

p add_binary("11", "1")