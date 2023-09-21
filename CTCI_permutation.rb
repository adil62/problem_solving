# problem: Find permutations of a given string
# Time complexity: O(n*n!)
# Space complexity: o(n) max n stacks will be there at a time

def find_permutations(string, l, r)
    if l == r
        p string
        return
    end

    for i in l..r
        swap(string, i, r)
        find_permutations(string, l+1, r)
        swap(string, r, i)
    end
end

def swap(string, i, r)
    temp = string[i]
    string[i] = string[r]
    string[r] = temp
    return string
end

input = "adi"
find_permutations(input, 0, input.length-1)
