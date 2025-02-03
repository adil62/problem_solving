# Time complexity: O(t)
# Space complexity: O(t)
def is_subsequence(s, t)
    t_arr = t.chars
    s_index = 0
    
    t_arr.each do |t_char|
        if t_char == s[s_index]
            s_index += 1
        end
    end
 
    return s_index == s.length
end
