import UIKit

var numbers = [8, 3, 6, 4, 6, 5, 6, 8, 2, 7]
var frequency: [Int: Int] = [:]

for i in 0..<numbers.count {
  var count = 1
  if numbers[i] != -1 {
    for j in i+1..<numbers.count {
      if numbers[i] == numbers[j] {
        count += 1
        numbers[j] = -1
      }
    }
  }
  
  if count > 1 {
    frequency[numbers[i]] = count
  }
  
}

print(frequency)
