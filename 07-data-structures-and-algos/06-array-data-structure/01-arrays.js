const str = ['a', 'b', 'c', 'd']

// push 
str.push('e') // O(1)

// pop
str.pop(); // O(1)

//unshift => Add an item to the top, and shift everything +1 an index
// str.unshift('x') // O(n)

//splice
str.splice(1, 0, 'alien') // O(n)

console.log(str)
