import UIKit

var numbers = [8, 3, 6, 4, 6, 5, 6, 8, 2, 7]

func findDuplicateElements(in array: [Int]) {
  var numbers = array
  var frequency: [Int: Int] = [:]
  for i in 0..<numbers.count {
    var count = 1
    if numbers[i] != -1 {
      for j in i+1..<numbers.count {
        if numbers[i] == numbers[j] {
          count += 1
          numbers[j] = -1
        }
      }
    }
    
    if count > 1 {
      frequency[numbers[i]] = count
    }
  }
  
  print(frequency)
}

findDuplicateElements(in: numbers)

func findDuplicateElementsIn(_ unsortedArray: [Int]) -> [Int: Int] {
  var frequency: [Int: Int] = [:]

  var minElement = unsortedArray[0]
  var maxElement = unsortedArray[0]

  for i in 0..<unsortedArray.count {
    if unsortedArray[i] > maxElement {
      maxElement = unsortedArray[i]
    }

    if unsortedArray[i] < minElement {
      minElement = unsortedArray[i]
    }
  }

  var bitSetArray = [Int](repeating: 0, count: maxElement + 1)

  for element in unsortedArray {
    bitSetArray[element] += 1
  }

  for i in 0..<bitSetArray.count {
    if bitSetArray[i] > 1 {
      frequency[i] = bitSetArray[i]
    }
  }

  return frequency
}

print(findDuplicateElementsIn(numbers))
