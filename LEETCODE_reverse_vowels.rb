# Time complexity: O(n)
# Space complexity: O(n)

# @param {String} s
# @return {String}
def reverse_vowels(s)
    vowels = ['a', 'e', 'i', 'o', 'u']
    vowel_idx = []
    vowel_idx_rev = []
    res = s.dup

    s.chars.each_with_index do |char, idx|
        if vowels.include? char.downcase
            vowel_idx.push(idx)
        end
    end
    vowel_idx_rev = vowel_idx.reverse

    vowel_idx.each_with_index do |el, i|
        res[vowel_idx[i]] = s[vowel_idx_rev[i]]
    end

    return res
end
