# Time complexity: O(n)
# Space complexity: O(1)

# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
    number_of_flower_that_can_be_placed = 0
    
    flowerbed.each_with_index do |val, i|
        next if val == 1
        
        if i == 0 && flowerbed[i+1] == 0 
            flowerbed[i] = 1
            number_of_flower_that_can_be_placed += 1
        elsif (i == flowerbed.length-1) && flowerbed[i-1] == 0 
            flowerbed[i] = 1
            number_of_flower_that_can_be_placed += 1
        elsif flowerbed[i+1] == 0 && flowerbed[i-1] == 0
            flowerbed[i] = 1
            number_of_flower_that_can_be_placed += 1
        end
    end

    return n <= number_of_flower_that_can_be_placed
end
