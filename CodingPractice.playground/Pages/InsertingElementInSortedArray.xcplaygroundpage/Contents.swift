import Foundation

var array = [1, 2, 6, 7, 8, 9, 13, 14, 16, 18, 20, 21]
let element = 11
var index = array.count - 1

while array[index] > element {
  index -= 1
}

array.insert(element, at: index + 1)

print(array)
