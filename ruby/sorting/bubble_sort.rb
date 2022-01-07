def bubble_sort(array)
   len = array.length
   for i in 0..len do
      for j in 0...len do
        # Swap numbers
         temp = array[j]
         array[j] = array[j+1]
         array[j+1]= temp
      end
   end
end
