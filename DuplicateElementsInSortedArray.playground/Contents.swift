import UIKit

var numbers = [3, 6, 8, 8, 10, 12, 15, 15, 15, 20]

func findDuplicateElements(in array: [Int]) -> [Int] {
  var duplicateNumbers = [Int]()
  var lastDuplicate = 0
  
  for i in 0..<array.count-1 {
    let value = array[i]
    if value == array[i+1] && value != lastDuplicate {
      duplicateNumbers.append(value)
      lastDuplicate = value
    }
  }
  
  return duplicateNumbers
}

print(findDuplicateElements(in: numbers))

func findDuplicateElementsCount(in array: [Int]) -> [Int: Int] {
  var frequency: [Int: Int] = [:]
  var i = 0
  
  while i < array.count - 1 {
    if array[i] == array[i+1] {
      var j = i + 1
      while j < array.count && array[j] == array[i] {
        j += 1
      }
      frequency[array[i]] = j - i
      i = j - 1
    } else {
      i += 1
    }
  }
  
  return frequency
}

print(findDuplicateElementsCount(in: numbers))

func findDuplicateNumbersAlongWithCount(in array: [Int]) {
  guard !array.isEmpty else {
    return
  }
  
  var maxValue = array[0]
  var minValue = array[0]
  
  for value in array[1...] {
    if value > maxValue {
      maxValue = value
    }
    if value < minValue {
      minValue = value
    }
  }
  
  var bitSetArray = [Int](repeating: 0, count: maxValue + 1)
  
  for i in 0..<array.count {
    bitSetArray[array[i]] += 1
  }
  
  var frequency: [Int: Int] = [:]
  
  for i in 0..<bitSetArray.count {
    if bitSetArray[i] > 1 {
      frequency[i] = bitSetArray[i]
    }
  }
  
  print(frequency)
}

findDuplicateNumbersAlongWithCount(in: numbers)
