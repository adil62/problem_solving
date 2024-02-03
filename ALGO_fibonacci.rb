# Fibonacci dynamic programming.
def fib(n, memo)
    if n == 0
        return 0
    end
    if n == 1
        return 1
    end
 
    if memo[n]
        return memo[n]
    end
    res  = fib(n-1, memo) + fib(n-2, memo)
    memo[n] = res

    return res
end

p fib(10, {})