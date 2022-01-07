def selection_sort(array)
  array_length = array.length
  return array if array_length <= 1
    
  for i in 0...array_length do
    min = i
    temp = array[i]
    for j in (i + 1)..array_length-1
      # if minimum element is found update the minimum
      if array[j] < array[min]
        min = j
      end
    end
    array[i] = array[min]
    array[min] = temp
  end
  array
end

def selection_sort(array)
  array_length = array.length
  return array if array_length <= 1
  
  for i in 0...array_length do
    min = i
    for j in (i+1)...array_length do
      # if minimum element is found update the minimum
      if array[j] < array[min]
        array[min], array[j] = array[j], array[min]
      end
    end
  end
  array
end

array = [34,3,53,3,52,6,9,198,35,21]
puts selection_sort(array)
