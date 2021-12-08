function selectionSort(array) {
        const len = array.length;
        for(let i = 0; i < array.length; i++) {
            let min = i;
            let temp = array[i]
            for(let j = i+1; j < array.length; j++){
                if (array[j] < array[min]) {
                    min = j;
                }
            }
            array[i] = array[min]
            array[min] = temp
        }
        console.log(array)
        return array
    }
    
   selectionSort(numbers)

// O(n^2)
