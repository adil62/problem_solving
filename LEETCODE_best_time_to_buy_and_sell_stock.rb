# @param {Integer[]} prices
# @return {Integer}

# O(n^2) approach
# space complexity is O(1)
def max_profit(prices)
    max_profit = 0
    for i in 0..prices.length-2
        max_profit_for_this_item = 0
        for j in i..prices.length-1
            profit = prices[j] - prices[i]
            if profit > max_profit_for_this_item
                max_profit_for_this_item = profit
            end
        end
        if max_profit_for_this_item > max_profit
            max_profit = max_profit_for_this_item
        end
    end

    return max_profit
end

# O(n) approach
# space complexity is also o(1)
def max_profit(prices)
    left_ptr = 0
    right_ptr = 1
    max_profit = 0

    while right_ptr < prices.length 
        if prices[left_ptr] < prices[right_ptr]
            profit = prices[right_ptr] - prices[left_ptr]
            if profit > max_profit
                max_profit = profit
            end
            right_ptr += 1
        else 
            left_ptr = right_ptr
            right_ptr += 1
        end
    end

    return max_profit
end

ip2 = [7,1,5,3,6,4]
p max_profit(ip2)