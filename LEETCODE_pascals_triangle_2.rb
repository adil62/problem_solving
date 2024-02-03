# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    rows = []

    (row_index+1).times do |i|
        previous_row = rows[i-1]
        current_row = []

        current_row.push(1)
        i.times do |j|
            if j+1 < previous_row.length 
                current_row.push(previous_row[j] + previous_row[j+1])
            else 
                current_row.push(previous_row[j])
            end
        end
        rows.push(current_row)
    end

    return rows[-1]
end

p get_row(3)
