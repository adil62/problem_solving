# Time complexity: O(n)
# Time complexity: O(1)

# @param {String} str1
# @param {String} str2
# @return {String}
def gcd_of_strings(str1, str2)
    # return if gcd is not there
    return "" if str1 + str2 != str2 + str1
    
    len = gcd(str1.length, str2.length)
    
    return str1[0..len-1]
end

def gcd(a, b)
    smallest = [a,b].min
    hcf = 1
    for i in 1..smallest do
        if a % i == 0 &&  b % i == 0
            hcf = i
        end
    end
    return hcf
end
