# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    res = []
    num_rows.times do |i|
        col = [1]
        i.times do |j|
            prev_res = res[i-1]
            next_num = prev_res[j]
            if j+1 < prev_res.length
                next_num += prev_res[j+1]
            end
            col.push(next_num)
        end
        res.push(col)
    end

    res
end

p generate(5)








