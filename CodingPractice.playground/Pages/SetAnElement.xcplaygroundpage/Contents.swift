//: [Previous](@previous)

import Foundation

var array = [6, 2, 7, 3, 8, 4, 1]
let index = 3
let value = 100

print(array)

if array.count > 0 && index >= 0 && index < array.count{
  for i in 0..<array.count {
    if i == index {
      array[i] = value
    }
  }
}

print(array)

// OR

let index1 = 5
let value1 = 15

if array.count > 0 && index1 >= 0 && index1 < array.count {
  array[index1] = value1
}

print(array)

//: [Next](@next)
