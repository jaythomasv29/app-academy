// reference type
// context
// instantiation

// ** REFERENCE TYPE **

[] == [] // false
console.log([1] == [1]) // false

const object1 = { value: 10} 
const object2 = { value: 10}

object3 = object1
console.log(object1 === object2) // false different pointers

console.log(object1 == object3) // true same pointer



// classes & instantiation

class Player {
  constructor(name, type) {
    this.name = name
    this.type = type
  }

  introduce() {
    console.log(`Hi, my name is ${this.name}, and I am a type of ${this.type}`)
  }
}

class Wizard extends Player {
  // wizard adds on top whatever player has
  constructor(name, type) {
    // when extending, the constructor function must be called from player
    super(name, type)
  }
  play(){
    console.log(`WEEE TIME TO PLAY I AM A ${wiz}`)
  }
}

const wizard1 = new Wizard('Shelby', 'Healer')
const wizard2 = new Wizard("Yugiho", "Dark Magician")
