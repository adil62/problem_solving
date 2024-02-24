# Will work but T comlexity is O(k*(n-k))
# def find_max_average(nums, k)
#     averages = []
#     for i in 0..nums.length-1 do
#         break if nums.length - i < k
#         average = 0
#         k.times do |j|
#             average += nums[i+j]
#         end
#         averages.push(average.to_f/k)
#     end
#     return averages.max
# end

# T complexity: O(n)
# S complexity: O(1)
def find_max_average(nums, k)
    sum = 0
    k.times do |idx|
        sum += nums[idx]
    end
    max_average = sum.to_f/k
    
    (k...nums.length).each do |idx|
        sum -= nums[idx-k]
        sum += nums[idx]
        max_average = [sum.to_f/k, max_average].max
    end
    
    return max_average
end
