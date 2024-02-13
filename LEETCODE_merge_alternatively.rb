# Time complexity: O(m+n)
# Space: O(1)

# @param {String} word1
# @param {String} word2
# @return {String}
def merge_alternately(word1, word2)
    longest_length = word1.length > word2.length ? word1.length : word2.length
    res = ""
    
    longest_length.times do |i|
        if i <= word1.length-1 && i > word2.length-1
            res = res + word1[i..-1]
            break
        end
        if i > word1.length-1 && i <= word2.length-1
            res = res + word2[i..-1]
            break
        end
        
        res = res + word1[i]
        res = res + word2[i]
    end
    
    return res
end
