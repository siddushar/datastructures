arr = [2,3,5,9,14,16,18]
target = 15

def flooring_number(arr, target)
  _start = 0
  _end = arr.length - 1
  
  while(_start <= _end)
    # Find the middle element of the array
    mid = _start + (_end - _start)/2
    
    if target < arr[mid]
      _end = mid - 1
    elsif target > arr[mid]
      _start = mid + 1
    else
      return mid
    end
  end
  return _end
end
