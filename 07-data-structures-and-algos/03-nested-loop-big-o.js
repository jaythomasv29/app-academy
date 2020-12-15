const boxes = [1,2,3,4,5]

for (let i = 0; i < boxes.length; i++) {
  for(let j = 1; j < boxes.length; j++) {
    console.log(i , j)
  }
}

// nested loops = O(n * n )
// O(n^2)

// The 4 rules of big o notation
// 1. Most dominant term
// 2. Ignore all constants
// 3. Care about the worst case
// 4. Different terms for different inputs(a + b)

