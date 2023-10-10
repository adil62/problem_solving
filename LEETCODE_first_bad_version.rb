# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}

# Time complexity - O(log n)
# Space complexity - O(1)
def first_bad_version(n)
    left = 0
    right = n

    return 0 if is_bad_version(0)

    while left <= right
        mid = left + (right - left)/2

        is_mid_bad = is_bad_version(mid)

        if is_mid_bad
            right = mid-1
        elsif !is_mid_bad
            left = mid+1
        end
    end

    if is_bad_version(left)
        return left
    else
        return -1
    end
end

first_bad_version(5)