const obj1 = {
  name: 'james',
  age: 28,
  sex: "male",
  height: 160
}


const entries = Object.entries( obj1 )
console.log( Object.fromEntries( entries ) )