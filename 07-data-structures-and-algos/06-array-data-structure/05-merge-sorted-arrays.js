// given two arrays
// combine them into one sorted array

const arr1 = [ 0, 3, 4, 31 ]
const arr2 = [ 4, 5, 30 ]

const sortMerge = ( array1, array2 ) => {
  const combined = arr1.concat( arr2 )
  sorted = false
  while ( !sorted ) {
    sorted = true  // change flag to true in case there is no more values out of order
    for ( let i = 0; i < combined.length - 1; i++ ) {
      if ( combined[ i ] > combined[ i + 1 ] ) {
        temp = combined[ i + 1 ]
        combined[ i + 1 ] = combined[ i ] // move greater value to back
        combined[ i ] = temp // move the lesser value to the front
        sorted = false  // change flag back to false to repeat
      }
    }
  }
  return combined
}

console.log( sortMerge( arr1, arr2 ) )