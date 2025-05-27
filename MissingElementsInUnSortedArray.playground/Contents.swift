import UIKit

var numbers = [3, 7, 4, 9, 12, 6, 1, 11, 2, 10]

func findMissingNumbers(_ numbers: [Int]) -> [Int] {
  guard !numbers.isEmpty else {
    return []
  }
  var missingNumbers: [Int] = []
  var maxNumber = numbers[0]
  var minNumber = numbers[0]
  
  for i in 0..<numbers.count {
    if numbers[i] > maxNumber {
      maxNumber = numbers[i]
    }
    
    if numbers[i] < minNumber {
      minNumber = numbers[i]
    }
  }
  
  var bitSetArray = [Int](repeating: 0, count: maxNumber+1)
  
  for i in 0..<numbers.count {
    let index = numbers[i]
    bitSetArray[index] = 1
  }
  
  for i in 0..<bitSetArray.count {
    if bitSetArray[i] == 0 {
      if i >= minNumber {
        missingNumbers.append(i)
      }
    }
  }
  return missingNumbers
}

let missingNumbers = findMissingNumbers(numbers)
print(missingNumbers)
