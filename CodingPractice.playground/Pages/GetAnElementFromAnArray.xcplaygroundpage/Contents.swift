import Foundation

let array = [10,13,17,19,23,29,31]
let index = 13
let value = 43

// Using index getting value
if array.count > 0 && index < array.count {
  print(array[index])
}

// Using value getting index

if array.count > 0 {
  for i in 0..<array.count - 1 {
    if array[i] == value {
      print("index", i)
    }
  }
}
