import Foundation

var array = [10, 9, 7, 2, 16, 27, 83]
var minValue = array[0]

for value in array {
  if value < minValue {
    minValue = value
  }
}

print("Min value: \(minValue)")
