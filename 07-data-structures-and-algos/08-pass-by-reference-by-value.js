// primitive data types are referenced by value

var a = 5 // 5
var b = a // 6
b++  // when incremented it wil not be the same

// values are compared with values not pointers


// data structures are passed by reference in memory. (A pointer)

//Arrays
const arr1 = [ 1, 2, 3, 4, 5 ]
const arr2 = arr1 // We now have a reference in memory
const arr3 = [].concat( arr1 ) // Clone a new array to have a difference pointer
arr2.push( '123123' )

console.log( arr1 ) // Both will be the same because same place in memory
console.log( arr2 ) // Same pointer as arr1, will be same value
console.log( arr3 ) // Different pointer in memory, will be different

// Objects
let obj = { a: 'a', b: 'b', c: 'c' }
// Clone an object so it has a different pointer/reference
let clone = Object.assign( {}, obj )
let clone2 = { ...obj } // Method 2 to clone an array
