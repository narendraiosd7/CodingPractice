import UIKit

// generate random Ints of an array
var array: [Int] = [61, 64, 48, 90, 2, 22, 60]
var total: Int = 0

for value in array {
  total += value
}

print("Average: \(total/array.count)")
