# Sliding window approach
# Time complexity: O(n)
# Space complexity: O(1)
def max_vowels(s, k)
    max_vowels = 0
    vowels = ['a', 'e', 'i', 'o', 'u']
    
    # Calc for first window
    k.times do |i|
        if vowels.include? s[i]
            max_vowels += 1
        end
    end
    curr_vowels = max_vowels
    
    # Calc remaining windows
    (k...s.length).each do |i|
        if vowels.include?(s[i-k])
            curr_vowels -= 1
        end
        if vowels.include?(s[i])
            curr_vowels += 1
        end
        max_vowels = [curr_vowels, max_vowels].max
    end
    
    return max_vowels
end

# Time complexity: O(n)
# Space complexity: O(n)
def max_vowels(s, k)
    substrings = []
    vowels = ['a','e','i', 'o', 'u']
    for i in 0..(s.length) do 
      break if s.length - i < k
      substr = ""
      for j in i...(i+k) do
        substr += s[j]
      end
      substrings.push(substr)
    end
    substring_with_max_vowels = ''
    substring_with_max_vowels_count = 0
    substrings.each do |sub|
        vowel_count = 0
        sub.chars.each do |char| # size of this loop is constant, doesnt contribute to 
            if vowels.include?(char)
                vowel_count += 1
            end
        end
        if vowel_count > substring_with_max_vowels_count 
            substring_with_max_vowels = sub
            substring_with_max_vowels_count = vowel_count
        end
    end
    p substring_with_max_vowels
    return substring_with_max_vowels_count
end
