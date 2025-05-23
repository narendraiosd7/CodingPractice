import Foundation

let array = [1, 2, 6, 7, 8, 9, 13, 14, 16, 18, 20, 21]

func isSorted(_ array: [Int]) -> Bool {
  for i in 0..<array.count - 1 {
    if array[i] > array[i + 1] {
      return false
    }
  }
  
  return true
}


print(isSorted(array))
