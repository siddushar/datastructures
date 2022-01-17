# Using Linked list has cycle algorithem

def is_happy(n)
    slow = n
    fast = n
    
    loop do 
       slow = find_square(slow)
        temp = find_square(fast)
        fast = find_square(temp)
      break if fast == slow
    end 


    if(slow == 1)
        return true
    end
    return false
end

def find_square(number)
    ans = 0
    
    while (number > 0)
        rem = number % 10
        ans += rem * rem
        number = number / 10
    end
    ans
end
