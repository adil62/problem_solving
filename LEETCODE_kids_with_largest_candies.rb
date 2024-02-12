# Time complexity: O(n^2)
# Space complexity: O(n)
def kids_with_candies(candies, extra_candies)
    result = []
    candies.length.times do |i|
        new_candy = candies[i] + extra_candies
        is_largest = true
        candies.length.times do |j|
            next if j == i
            if candies[j] > new_candy
                is_largest = false
                break
            end
        end
        result.push(is_largest)
    end
    
    return result
end
