import Foundation

let originalArray = [1, 2, 3, 4, 5]
let removableElement = 4
var countOfNewArray = 0

for i in 0..<originalArray.count {
  if originalArray[i] != removableElement {
    countOfNewArray += 1
  }
  print("element", i)
}

var newArray = [Int](repeating: 0, count: countOfNewArray)
var j = 0

for i in 0..<originalArray.count {
  if originalArray[i] != removableElement {
    newArray[j] = originalArray[i]
    j += 1
  }
}
