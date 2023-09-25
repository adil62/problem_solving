# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    m_ptr = m-1
    n_ptr = n-1
    last_ptr = m + n - 1
    
    if m_ptr == -1
        nums2.each_with_index do |item, idx|
            nums1[idx] = nums2[idx]
        end
        return nums1
    end

    while m_ptr >= 0 && n_ptr >= 0
        if nums1[m_ptr] > nums2[n_ptr]
            nums1[last_ptr] = nums1[m_ptr]
            m_ptr -= 1
        else
            nums1[last_ptr] = nums2[n_ptr]
            n_ptr -= 1
        end
        last_ptr = last_ptr - 1
    end
 
    if n_ptr >= 0
        (n_ptr+1).times do |idx|
            nums1[idx] = nums2[idx]
        end
    end

    return nums1
end

p merge([0,0,0,0,0], 0, [1,2,3,4,5], 5)