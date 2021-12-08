et numbers = [99, 4, 432, 23, 24, 53, 5,34, 5]
    console.log("Welcome to Programiz!");
    
    
    function mergeSort(array) {
        
        
        if (array.length === 1){
            return array
        }
        
        const len = array.length;
        const middle =  Math.floor(len/2);
        const left = array.slice(0, middle);
        const right = array.slice(middle);
        
        //  console.log('left', left)
        //  mergeSort(left)
        //  mergeSort(right)
        
        return merge(
            mergeSort(left),
            mergeSort(right)
            )
        
    }
    
    function merge(left, right) {
        let res= [];
        let leftIndex = 0;
        let rightIndex = 0
        
        console.log("ptess", left)
        while(leftIndex < left.length && rightIndex < right.length) {
            if(left[leftIndex] < right[rightIndex]) {
                res.push(left[leftIndex])
                leftIndex++;
            } else {
                res.push(right[rightIndex])
                rightIndex++;
            }
        }
    }
    mergeSort(numbers)
