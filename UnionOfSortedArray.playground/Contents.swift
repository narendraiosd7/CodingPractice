import UIKit

let firstArray = [2, 6, 10, 15, 25]
let secondArray = [3, 6, 7, 15, 20]

func unionOfSortedArray(_ firstArray: [Int], _ secondArray: [Int]) -> [Int] {
  var thirdArray: [Int] = []
  var i = 0, j = 0
  while i < firstArray.count && j < secondArray.count {
    if firstArray[i] < secondArray[j] {
      thirdArray.append(firstArray[i])
      i += 1
    } else if firstArray[i] > secondArray[j] {
      thirdArray.append(secondArray[j])
      j += 1
    } else {
      thirdArray.append(firstArray[i])
      i += 1
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


print(unionOfSortedArray(firstArray, secondArray))