
def search_range(arr, target)
  # Find first occurances
  first = search(arr, target, true)
  last = search(arr, target, false)
  return [first, last]
end

def search(arr, target, firstele)
  _start = 0
  _end = arr.length - 1
  ans = -1
  
  while(start <= _end)
    mid = _start + (_end - _start)/2
    
    if target < arr[mid]
      _end = mid - 1
    elsif target > arr[mid]
      _start =  mid + 1
    else
      ans = mid
      if firstele
        _end = mid - 1
      else
        _start = mid +1
      end
    end
  end
  return ans
end
