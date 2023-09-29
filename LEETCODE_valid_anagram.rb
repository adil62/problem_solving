# O(n!) solution, space complexity is o(n)
# def is_anagram(s, t)
#     is_anagram = false
#     permutations_of_s = find_permutations(s, 0, s.length - 1)
#     permutations_of_s.each do |permutation|
#         if permutation == t
#             is_anagram = true
#         end
#     end

#     p permutations_of_s

#     return is_anagram
# end

# def find_permutations(string, start_idx, end_idx)
#     results = []

#     if start_idx == end_idx 
#         return results.push(string.dup)
#     end

#     for i in start_idx..end_idx
#         swap(string, i, start_idx)

#         child_res = find_permutations(string, start_idx+1, end_idx)
#         results.concat(child_res)

#         swap(string, start_idx, i)
#     end

#     return results
# end

# def swap(string, i, r)
#     temp = string[i]
#     string[i] = string[r]
#     string[r] = temp
#     return string
# end

# O(n) solution
# space - O(n)
def is_anagram(s, t)
    char_count_map = Hash.new(0)

    s.each_char { |char| char_count_map[char] += 1 }
    t.each_char { |char| char_count_map[char] -= 1 }

    char_count_map.values.all? { |count| count.zero? }
end

p is_anagram("dgqztusjuu", "dqugjzutsu")
