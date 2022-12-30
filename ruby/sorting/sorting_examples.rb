# Bubble sort

numbers = [12,3,24,4,52,97,2,5,76, 98,0]

def bubble_sort(numbers)

  len = numbers.length
  return numbers if len <= 1

  for i in 0...len do
    for j in 0...len-1 do
      if numbers[j] > numbers[j+1]
        numbers[j], numbers[j+1] = numbers[j+1], numbers[j]
      end
    end
  end

  return numbers
end

puts "Bubble sort -----"
print bubble_sort(numbers)


def bubble_sort_using_while(numbers)
  len = numbers.length
  return numbers if len <= 1

  loop do
    swapped = false

    for j in 0...len-1 do
      if numbers[j] > numbers[j+1]
        numbers[j], numbers[j+1] = numbers[j+1], numbers[j]
        swapped = true
      end
    end

    break if !swapped
  end
  return numbers
end
puts
print bubble_sort_using_while(numbers)


# Selection sort
numbers = [12, 3, 24, 4, 52, 97, 2, 5, 76, 98, 0]

def selection_sort(numbers)
  len = numbers.length
  return numbers if len <= 1

  for i in 0...len do
    min = i
    for j in i+1...len do
      if numbers[j] < numbers[min]
        min = j
      end
    end
    numbers[i], numbers[min] = numbers[min], numbers[i]
  end

  return numbers
end
puts
puts "selection sort"
p selection_sort(numbers)


# Insertion Sort

def insertion_sort(numbers)

  len = numbers.length
  return numbers if len <= 1

  for i in 1...len do
    j=i
    while(j > 0)
      if(numbers[j-1] > numbers[j])
        numbers[j], numbers[j-1] = numbers[j-1], numbers[j]
      end
      j= j-1
    end
  end
  return numbers
end


puts
puts "Insertion sort"

p insertion_sort(numbers)



def merge_sort(array)
  len = array.length
  
  return array if len <= 1

  mid = len/2
  
  left_arr = merge_sort(array[0...mid])
  right_arr = merge_sort(array[mid...len])
  
  merge(left_arr, right_arr)
end

def merge(left, right)
  sorted_array = []
  
  while(!left.empty? && !right.empty?) do
    
    if left[0] < right[0]
      sorted_array.push left.shift
    else
      sorted_array.push right.shift
    end
    
  end
  sorted_array.concat(left).concat(right)
end

puts
puts "Merge sort"
p merge_sort(numbers)
