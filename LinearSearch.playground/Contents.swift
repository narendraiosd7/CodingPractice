import UIKit

// MARK: - Linear Search

/// Linear search, also known as sequential search, is a simple method for finding a target value within a list or array. It sequentially checks each element of the list for the target value until a match is found or until all the elements have been searched
///
/// - Works on both sorted and unsorted lists.
/// - Does not need any setup or sorting before searching.
/// - Easy to understand and use.
/// - In the worst case, it checks all items (O(n) time).
/// - Best for small lists or when speed is not very important.


// MARK: Using For loop

func linearSearch<T: Equatable>(_ array: [T], for tager: T) -> Int? {
  for (index, element) in array.enumerated() {
    if element == tager {
      return index
    }
  }
  
  return nil
}

let numbers = [5, 12, 3, 8, 22, 10, 1]
var targetNumber = 8

if let index = linearSearch(numbers, for: targetNumber) {
  print("Found \(targetNumber) at index \(index)")
} else {
  print("\(targetNumber) not found")
}

var missingNumer = 15

if let index = linearSearch(numbers, for: missingNumer) {
  print("Found \(missingNumer) at index \(index)")
} else {
  print("\(missingNumer) not found")
}

let strings = ["apple", "banana", "cherry", "date"]

if let indexOfBanana = linearSearch(strings, for: "banana") {
    print("Found 'banana' at index: \(indexOfBanana)") // Output: Found 'banana' at index: 1
} else {
    print("'banana' not found in strings.")
}

if let indexOfGrape = linearSearch(strings, for: "grape") {
    print("Found 'grape' at index: \(indexOfGrape)")
} else {
    print("'grape' not found in strings.") // Output: 'grape' not found in strings.
}


// MARK: Using while loop

func linearSearch<T: Equatable>(_ array: [T], _ target: T) -> Int? {
  var index = 0
  while index < array.count {
    if array[index] == target {
      return index
    } else {
      index += 1
    }
  }
  
  return nil
}

targetNumber = 22
missingNumer = 100

if let index = linearSearch(numbers, targetNumber) {
  print("Found \(targetNumber) at index \(index)")
} else {
  print("\(targetNumber) not found")
}

if let index = linearSearch(numbers, missingNumer) {
  print("Found \(missingNumer) at index \(index)")
} else {
  print("\(missingNumer) not found")
}

if let indexOfBanana = linearSearch(strings, "date") {
    print("Found 'date' at index: \(indexOfBanana)") // Output: Found 'date' at index: 3
} else {
    print("'date' not found in strings.")
}

if let indexOfGrape = linearSearch(strings, "Orange") {
    print("Found 'Orange' at index: \(indexOfGrape)")
} else {
    print("'Orange' not found in strings.") // Output: 'Orange' not found in strings.
}
