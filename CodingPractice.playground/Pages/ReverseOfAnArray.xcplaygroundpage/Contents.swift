import UIKit

var array = [2, 20, 16, 14, 6, 18, 9, 8, 21, 7, 1, 13]
var reversedArray = [Int]()
var reversedArray1 = [Int]()
print("Before: ", array)

for i in stride(from: array.count - 1, through: 0, by: -1) {
  reversedArray.append(array[i])
}

// OR

for value in array {
  reversedArray1.insert(value, at: 0)
}

array = reversedArray

print("After: ", array)
print(array == reversedArray1)
