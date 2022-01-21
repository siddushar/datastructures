# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
  _start = 0
  _end = arr.length() -1
  
  
  while(_start < _end)
    mid = _start + (_end - _start) / 2
    
    if arr[mid] > arr[mid+1]
        # you are in desc part of array,
        # this may be the ans but look at left side of array
      _end = mid
    else
         # you are in Asc part of array,
        # this may be the ans but look at right side of array
      _start = mid + 1
    end
  end
    # In the end start == end, pointing to the largest number number because of 2 checks above. 
    # start & end are always trying to find the largest elemennt in the array
    # Once they pointing to same element, that is the largest element.
  return _start
end
