# https://www.geeksforgeeks.org/find-position-element-sorted-array-infinite-numbers/

def ans(arr, target)
  
  # Since array is infinite we start with 2 indices
  _start = 0
  _end = 1
  
  # and double the size if target element is not lyi in the _start and _end range.
  while target > arr[_end]
    
    tmp = _end+1
    # Double the _end index for every iteration
    _end = _end + (_end - _start +1) * 2
    # start from end+1 index
    _start = temp
  end
  
   binary_serach(arr, _start, _end)
end


def binary_serach(arr, _start, _end)
  while(_start <= _end)
    mid = _start + (_end - _start)/2
    
    if target < arr[mid]
      _end = mid - 1
    elsif target > arr[mid]
      _start = mid + 1
    else
      return mid
    end
  end
end
