import Foundation

var array1 = [-12, -22, 19, -1, 16, -4, -21, 11, -25]
var i = 0
var j = array1.count - 1

while i < j {
  while array1[i] < 0 { i += 1 }
  while array1[j] >= 0 { j -= 1 }

  if i < j {
    (array1[i], array1[j]) = (array1[j], array1[i])
  }
}

print(array1)
