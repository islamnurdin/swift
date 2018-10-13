
import UIKit

let numbers = [1, 2, 4, 5, 8, 12, 15, 20]

func BinarySearchForSearchValue (searchValue: Int, array: [Int]) -> Bool{
    let leftIndex = 0
    var rightIndex = array.count - 1
    
    while leftIndex <= rightIndex {
        
        let middleIndex = (leftIndex + rightIndex) / 2
        let middleValue = array[middleIndex]
        
        if middleValue == searchValue {
            return true
        }
        
        if searchValue < middleValue {
            rightIndex = middleIndex - 1
        }
    }
    return false
}

print(BinarySearchForSearchValue(searchValue: 4, array: numbers))
