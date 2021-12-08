let numbers = [99, 4, 432, 23, 24, 53, 5,34]

function bubbleSort(array) {
    const len = array.length;
    
    for(let i = 0; i < array.length; i++) {
        for(let j = 0; j < array.length; j++){
            // Swap numbers
            if (array[j]>array[j+1]) {
                let temp = array[j]
                array[j] = array[j+1]
                array[j+1] = temp;
            }
        }
    }
    console.log(array)
    return array
}

bubbleSort(numbers)
