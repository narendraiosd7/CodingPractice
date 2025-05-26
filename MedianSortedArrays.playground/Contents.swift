import UIKit

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
  if nums1.isEmpty && nums2.isEmpty { return 0.0 }
  if nums1.isEmpty && nums2.count == 1 { return Double(nums2[0]) }
  if nums1.count == 1 && nums2.isEmpty { return Double(nums1[0]) }
  var array = [Int]()
  
  var i = 0, j = 0
  
  while i < nums1.count && j < nums2.count {
    if nums1[i] < nums2[j] {
      array.append(nums1[i])
      i += 1
    } else {
      array.append(nums2[j])
      j += 1
    }
  }
  
  for i in i..<nums1.count {
    array.append(nums1[i])
  }
  
  for j in j..<nums2.count {
    array.append(nums2[j])
  }
  
  let index = array.count / 2
  var median: Double = 0
  if (array.count % 2 == 0) {
    median = Double(array[index-1] + array[index]) / 2
  } else {
    median = Double(array[index])
  }
  return median
}

var nums1 = [1,2,3,4,5], nums2 = [6,7,8,9,10,11,12,13,14,15,16,17]
print(findMedianSortedArrays(nums1, nums2))
