import UIKit

let firstArray = [2, 6, 10, 15, 25]
let secondArray = [3, 6, 7, 15, 20]

func intersectionOfSortedArrays(_ firstArray: [Int], _ secondArray: [Int]) -> [Int] {
  var thirdArray: [Int] = []
  var i = 0, j = 0
  
  while i < firstArray.count && j < secondArray.count {
    let firstElement = firstArray[i]
    let secondElement = secondArray[j]
    
    if firstElement == secondElement {
      thirdArray.append(firstElement)
      i += 1
      j += 1
    } else if firstElement < secondElement {
      i += 1
    } else {
      j += 1
    }
  }
  
  return thirdArray
}

print(intersectionOfSortedArrays(firstArray, secondArray))
