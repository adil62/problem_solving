# Given a string s consisting of words and spaces, 
# return the length of the last word in the string.

# A word is a maximal substring consisting of non-space characters only.
# eg:
# Input: s = "Hello World"
# Output: 5
# Explanation: The last word is "World" with length 5.


# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    words_arr = s.split(" ")
    last_word = words_arr[words_arr.length-1]
    
    return last_word.length
end

puts length_of_last_word("Today is a nice day")
