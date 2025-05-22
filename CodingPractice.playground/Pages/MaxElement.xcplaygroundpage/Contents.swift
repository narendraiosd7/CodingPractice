import Foundation

let array = [9, 19, 3, 5, 8, 18, 12, 45, 2, 34, 23, 56, 1, 2, 11]

var maxValue = array[0]

if array.count > 1 {
  for i in 1..<array.count {
    if array[i] > maxValue {
      maxValue = array[i]
    }
  }
}

print(maxValue)

// OR

if array.count > 1 {
  for element in array {
    if element > maxValue {
      maxValue = element
    }
  }
}

print(maxValue)
