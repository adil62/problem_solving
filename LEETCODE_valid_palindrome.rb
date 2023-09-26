# Time complexity - O(n)
# Space complexity - O(1)
def is_palindrome(s)
    left_ptr = 0
    right_ptr = s.length - 1
    is_palindrome = true
    count = 0

    while right_ptr >= 0 && left_ptr < s.length
        is_special_char = false

        if s[right_ptr].downcase == s[left_ptr].downcase
            left_ptr += 1
            right_ptr -= 1
            is_palindrome = true
        elsif !is_alphanumeric(s[right_ptr])
            right_ptr -= 1
        elsif !is_alphanumeric(s[left_ptr])
            left_ptr += 1
        else
            is_palindrome = false
            break
        end
    end

    return is_palindrome
end

def is_alphanumeric(char)
    char.match?(/[A-Za-z0-9]/)
end

p is_palindrome("aaaaaaaaaaaaaaaaaaa")
