# @param {Integer[][]} image
# @param {Integer} sr
# @param {Integer} sc
# @param {Integer} color
# @return {Integer[][]}

# Time complexity - O(4 * mn) , O(mn)
# Space complexity - O(mn)
def flood_fill(image, sr, sc, color)
    return image if image[sr][sc] == color

    rec_fill(image, sr, sc, color, image[sr][sc])

    return image
end

def rec_fill(image, sr, sc, color, first_item_color)
    return if sr > image.length-1  || sr < 0
    return if sc > image[0].length-1 || sc < 0
    return if image[sr][sc] != first_item_color

    image[sr][sc] = color

    rec_fill(image, sr+1, sc, color, first_item_color)
    rec_fill(image, sr-1, sc, color, first_item_color)
    rec_fill(image, sr, sc+1, color, first_item_color)
    rec_fill(image, sr, sc-1, color, first_item_color)
end

p flood_fill([[1,1,1],[1,1,0],[1,0,1]], 1, 1, 2)
# p flood_fill([[0,0,0],[0,0,0]], 0, 0, 0)
