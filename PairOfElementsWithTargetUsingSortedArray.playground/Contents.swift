import UIKit

let numbers = [1, 3, 4, 5, 6, 8, 9, 10, 12, 14]
let targetNumber = 10

func findingAPairElement(in array: [Int], with target: Int) {
  var i = 0
  var j = array.count - 1
  
  while i < j {
    if array[i] + array[j] == target {
      print("\(array[i]) at index \(i) + \(array[j]) at index \(j) = \(target)")
      i += 1
      j -= 1
    } else if array[i] + array[j] < target {
      i += 1
    } else {
      j -= 1
    }
  }
}

findingAPairElement(in: numbers, with: targetNumber)
