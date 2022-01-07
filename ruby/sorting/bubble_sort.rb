array = [34,3,53,3,52,6,9,198,35,21]

# Using for loop
def bubble_sort(array)
   len = array.length
   for i in 0...len do
     for j in 0...len-1 do
         if array[j] > array[j+1]
            array[j], array[j+1] = array[j+1], array[j]
         end
     end
   end
   array
end

# Using while loop
def bubble_sort(array)
   array_length = array.size
   return array if array_length <= 1
    
   loop do
      swapped = false
      (array_length-1).times do |i|
         if array[i] > array[i+1]
            array[i], array[i+1] = array[i+1], array[i]
            swapped = true
         end
      end
        
      break if !swapped
    end
    array
end

puts bubble_sort(array)


Space complexity: o(1)
Time complexity:
      Worst: O(n^2)
      Avarage: O(n)
      Best: O(n)
