// .padStart() // gives padding to start of string
// .padEnd()  // gives padding to end of string


// Object.values
// Object.entries
// Object.keys

const obj = {
  username0: 'Santa',
  username1: 'Rudolf',
  username2: 'Mr.Grinch'
}

const arr = [ 1, 2, 3, 4 ]
console.log( arr.map( ele => {
  return ele + 2
} ) )

const modifiedKeys = Object.keys( obj ).map( ele => {
  return 'hello' + ele
} )

console.log( modifiedKeys )



// Async Await