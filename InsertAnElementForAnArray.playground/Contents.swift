import UIKit

var originalArray = [1, 2, 3, 4, 5]
var newArray = [Int](repeating: 0, count: originalArray.count + 1)
var insertIndex = 2
var insertValue = 99

for i in 0..<originalArray.count {
  if i < insertIndex {
    newArray[i] = originalArray[i]
  } else if i == insertIndex {
    newArray[i] = insertValue
  } else {
    newArray[i] = originalArray[i - 1]
  }
}

print("Original Array: \(originalArray)")
print("New Array: \(newArray)")
