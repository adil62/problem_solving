# Time: O(n log n)
def guessNumber(n)
    start = 1
    end_val = n

    while start <= end_val
        mid = (start + end_val) / 2
        pick = guess(mid)
        p "mid: #{mid}"

        if pick == 0
            return mid
        elsif pick == 1
            start = mid + 1
        elsif pick == -1
            end_val = mid - 1
        end
    end
end
