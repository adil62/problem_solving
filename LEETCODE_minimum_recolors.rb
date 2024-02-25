# Time complexity: O(n)
# Space complexity: O(1)
def minimum_recolors(blocks, k)
    minimum_blacks = 0
    
    k.times do |idx|
        if blocks[idx] == 'W'
            minimum_blacks += 1
        end
    end
    
    temp_min_blacks = minimum_blacks
    
    (k...blocks.length).each do |idx|
        if blocks[idx-k] == 'W'
            temp_min_blacks -= 1
        end
        if blocks[idx] == 'W'
            temp_min_blacks += 1
        end
        
        minimum_blacks = [temp_min_blacks, minimum_blacks].min
    end
    
    return minimum_blacks
end
