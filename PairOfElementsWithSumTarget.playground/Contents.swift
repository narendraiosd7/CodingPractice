import UIKit

var numbers = [6, 3, 8, 10, 16, 7, 5, 2, 9, 14]

func findSumOfElements(in array: [Int], target: Int) {
  for i in 0..<array.count {
    for j in i+1..<array.count {
      if array[i] + array[j] == target {
        print("O(n^2) solution: \(array[i]) at index \(i) + \(array[j]) at index \(j) = \(target)")
      }
    }
  }
}

findSumOfElements(in: numbers, target: 10)

func findingSumOfElementsWithIndices(in array: [Int], target: Int) {
  var max = array[0]
  
  for element in array {
    if element > max {
      max = element
    }
  }
  
  if max < 0 && !array.isEmpty {
    return
  }
  
  var mapArray = [Int](repeating: 0, count: max + 1)
  
  for (index, element) in array.enumerated() {
    let complement = target - element
    
    if complement >= 0 && complement <= max && mapArray[complement] != 0 {
      let originalIndex = mapArray[complement] - 1
      print("O(n) solution: \(element) at index \(index) + \(complement) at index \(originalIndex) = \(target)")
    }
    
    if complement >= 0 && complement <= max {
      mapArray[element] = index + 1
    }
  }
}

findingSumOfElementsWithIndices(in: numbers, target: 10)
