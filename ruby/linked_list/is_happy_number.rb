# Write an algorithm to determine if a number n is happy.

# A happy number is a number defined by the following process:

# Starting with any positive integer, replace the number by the sum of the squares of its digits.
# Repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1.
# Those numbers for which this process ends in 1 are happy.
# Return true if n is a happy number, and false if not.
        

# Using Linked list has cycle algorithem

# @param {Integer} n
# @return {Boolean}
def is_happy(n)
    slow = n
    fast = n
    
    loop do
        slow = find_square(slow)
        fast = find_square(find_square(fast))
        break if slow == fast
    end
    
    return true if (slow == 1)
    return false
end

def find_square(number)
    ans = 0
    while(number > 0)
    
        rem = number % 10
        ans += rem * rem
        number /= 10
    end
    ans
end
