class MyArray {
  constructor() {
    this.length = 0
    this.data = {}
  }

  get(index) {
    return this.data[index]
  }

  push(item) {
    this.data[this.length] = item
    this.length++
    return this.length
  }

  pop() {
    let lastItem = this.data[this.length-1] // remove the last item
    delete this.data[this.length - 1]
    this.length--
    return lastItem
  }

  delete(index) {
   
  }
}

const newArray = new MyArray();
newArray.push('hi')
newArray.pop()
console.log(newArray)