# Time complexity: O(n)
# Space complexity: O(1)
def reverse_words(s)
    reversed = reverse(s, 0, s.length-1).strip
    start_idx = nil
    
    reversed = fix_spaces(reversed)
    
    for idx in 0..reversed.length-1 do
        char = reversed[idx]
        if char == ' '
            end_idx = idx-1
            reversed = reverse(reversed, start_idx, end_idx)
            start_idx = nil
        elsif idx == reversed.length-1
            end_idx = idx
            reversed = reverse(reversed, start_idx, end_idx)
            start_idx = nil
        elsif start_idx == nil
            start_idx = idx
        end
    end
    
    return reversed
end

def fix_spaces(s)
    return s.split.join(' ')
end

def reverse(str, start_idx, end_idx)
    left = start_idx
    right = end_idx
    
    return str unless left 
    
    while left < right
        tmp = str[left]
        str[left] =str[right]
        str[right] = tmp
        left += 1
        right -= 1
    end
    
    return str
end
