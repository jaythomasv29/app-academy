const array = [ 1, 2, 3, 4, 5 ]

array.forEach( num => { // for each cannot break
  console.log( num * 2 )
} )
// Section Outline
// map 
// filter
// reduce

// Map
const mapArray = array.map( num => {
  return num * 2
} )

console.log( mapArray )

// Filter
const selectArray = array.filter( num => {
  return num % 2 == 0
} )
console.log( selectArray )

const reduceArray = array.reduce( ( num, acc ) => {
  return acc + num
}, 0 )

console.log( reduceArray )
