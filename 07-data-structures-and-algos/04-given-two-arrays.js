// Given 2 arrays, create a function that lets a user know
// (true/false) whether these two arrays contain any common items
// ['a', 'b','c','d']
// ['m','y','o','d']
// True case

const checkArrayPairs = ( arr1, arr2 ) => {
  map = {}
  for (ele of arr1) {
    if (!map[ele]) { // if the element does not exist in the object
      map[ele] = true
    } 
  }
  for (ele of arr2) {
    if (map[ele]) {
      return true
    }
  }
  return false
}

arr = ['a', 'b','c','d']
arr1 = ['m','y','o','d']


console.log(checkArrayPairs(arr, arr1))