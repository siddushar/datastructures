letters = ["c","f","j"]
target = "a"
output = "c"

def next_greatest_letter(letters, target)
  _start = 0
  _end = letters.length - 1
  
   while(_start <= _end)
    mid = _start + (_end - _start)/2
    

    if target < letters[mid]
      _end = mid - 1
    else
      _start = mid + 1
    end
  end
  letters[_start % letters.length]
end

