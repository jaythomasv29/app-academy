// Create a function that reverses a string
// 'Hi My name is Andrei' should be
// ierdnA si eman iH'


function reverseString(str) {
  if (!str || str.length < 2 || typeof str !== 'string') {
    return 'error'
  }
  result = []
  splitted = str.split("")
  for(let i = splitted.length-1; i>=0; i--) {
    result.push(splitted[i])
  }
  return result.join(" ")
}

console.log(reverseString("Hi My name is Andrei"))
console.log( reverseString( 1 ) )