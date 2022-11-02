# Given an m x n matrix, return true if the matrix is Toeplitz. 
# Otherwise, return false.

# A matrix is Toeplitz if every diagonal from top-left to bottom-right has the same elements.

# Input: matrix = [[1,2,3,4],[5,1,2,3],[9,5,1,2]]
# Output: true
# Explanation:
# In the above grid, the diagonals are:
# "[9]", "[5, 5]", "[1, 1, 1]", "[2, 2, 2]", "[3, 3]", "[4]".
# In each diagonal all elements are the same, so the answer is True.

# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
    all_diagonals = get_diagonals(matrix)
    res = true

    all_diagonals.each do |diagonal|
        if diagonal.length <= 1
            next
        end
        prev_elem = diagonal[0]
        diagonal.each_with_index do |elem, idx|
            if elem != prev_elem
                res = false
                break
            end
        end

        if res == false 
            break
        end
    end

    return res
end

def get_diagonals(matrix)
    last_arr = matrix[-1]
    diagonals = []

    row_idx = matrix.length - 2

    last_arr.each_with_index do |elem, idx|
        if idx === 0 
            diagonals.push([elem])
            next
        end

        diagonal = []
        row_idx = matrix.length - 2
        col_idx = idx -1

        diagonal.push(elem)
        until col_idx < 0 || row_idx < 0 do
            diagonal.push(matrix[row_idx][col_idx])
            row_idx = row_idx -1
            col_idx = col_idx -1
        end
       
        diagonals.push(diagonal)
    end

    # Get remaining diag that start from matrix[matrix.length -2][matrix.col length -2]
    for i in (matrix.length - 2).downto(0) do
        diagonal = []
        row_idx = i
        for col_idx in (matrix[0].length-1).downto(0) do
            if row_idx == -1
                break
            end
            elem = matrix[row_idx][col_idx]
            diagonal.push(elem)
            row_idx = row_idx -1 
        end

        diagonals.push(diagonal)
    end

    return diagonals
end

p is_toeplitz_matrix([
    [1,2],
    [2,2]
])
# is_toeplitz_matrix([
#     [1, 2, 3, 4, 5],
#     [6, 7, 8, 9, 10],
#     [11,12,13,14,15],
# ])
