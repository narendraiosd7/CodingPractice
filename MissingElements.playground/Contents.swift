import UIKit

var numbers = [1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12]

func findMissingNumber(_ numbers: [Int]) -> Int {
  var sumOfGivenNumbers = 0
  
  for number in numbers {
    sumOfGivenNumbers += number
  }
  let lastNumber = numbers.last ?? 0
  let sumOfNaturalNumbers = (lastNumber * (lastNumber + 1)) / 2
  
  return sumOfNaturalNumbers - sumOfGivenNumbers
}

print(findMissingNumber(numbers))

numbers = [6, 7, 8, 9, 10, 11, 13, 14, 15, 16, 17]

func findMissingNumberFromASequentialArray(_ numbers: [Int]) -> Int {
  var difference = numbers.first ?? 0 - 0
  
  for i in 0..<numbers.count {
    if difference != numbers[i] - i {
      return i + difference
    }
  }
  
  return 0
}

print(findMissingNumberFromASequentialArray(numbers))

numbers = [6, 7, 8, 9, 11, 12, 15, 16, 17, 18, 19]

func findMissingNumbersFromASequentialArray(_ numbers: [Int]) -> [Int] {
  var missingNumbers: [Int] = []
  var difference = numbers.first ?? 0 - 0
  
  for i in 0..<numbers.count {
    if difference != numbers[i] - i {
      while difference < numbers[i] - i {
        missingNumbers.append(difference + i)
        difference += 1
      }
    }
  }
  
  return missingNumbers
}

print(findMissingNumbersFromASequentialArray(numbers))
