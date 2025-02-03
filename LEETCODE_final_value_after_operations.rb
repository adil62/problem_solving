# Time complexity: O(n)
# Space complexity: O(1)a

# @param {String[]} operations
# @return {Integer}
def final_value_after_operations(operations)
    res = 0
    operations_map = {
      '--X': ->(x) { x - 1 },
      'X--': ->(x) { x - 1 },
      'X++': ->(x) { x + 1 },
      '++X': ->(x) { x + 1 }
    }
    
    operations.each do |operation|
        res = operations_map[operation.to_sym].call(res)
    end
    
    return res
end
