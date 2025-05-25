import UIKit

let array1 = [2, 5, 9, 13, 21]
let array2 = [1, 4, 8, 16, 23, 42]

func mergeSortedArrays(_ firstArray: [Int], _ secondArray: [Int]) -> [Int] {
  var thirdArray = [Int]()
  var i = 0, j = 0
  
  while i < firstArray.count && j < secondArray.count {
    if firstArray[i] < secondArray[j] {
      thirdArray.append(firstArray[i])
      i += 1
    } else {
      thirdArray.append(secondArray[j])
      j += 1
    }
  }
  
  for i in i..<firstArray.count {
    thirdArray.append(firstArray[i])
  }
  
  for j in j..<secondArray.count {
    thirdArray.append(secondArray[j])
  }
  
  return thirdArray
}

let result = mergeSortedArrays(array1, array2)
print(result)
