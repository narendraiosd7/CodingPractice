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

// Using swap

var array1 = [2, 20, 16, 14, 6, 18, 9, 8, 21, 7, 1, 13]
var j = array1.count - 1

for i in 0..<array1.count/2 {
  let temp = array1[i]
  array1[i] = array1[j]
  array1[j] = temp
  j -= 1
}

print("After swap: ", array1)

