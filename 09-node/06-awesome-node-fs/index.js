const fs = require('fs')


// READ file asynchronously
const getFloors = () => {
  fs.readFile('./floor.txt', (err, data) => { // readFile method
    console.time('funchallenge')
    if(err) {
      console.log('error')
    }
    
    floors = data.toString('utf8').split("").reduce((acc, ele) => {
      if (ele === '(') {
        return acc +=1
      }
      if (ele === ')') {
        return acc -=1
      }
    }, 0)
    console.log(floors)
  console.timeEnd('funchallenge')
  })

}

getFloors()

//READ file synchronous
// const text = fs.readFileSync('./hello.txt') // synchronous
// console.log(text)

// //append
// fs.appendFile('./hello.txt', ' byebyebye!! ', err => {
//   if (err) {
//     console.log(err)
//   }
// })

//WRITE file

// fs.writeFile('bye.txt', 'Sad to see you go', err => {
//   if (err) {
//     console.log(err)
//   }
// })

//DELETE file

// fs.unlink('./bye.txt', err => {
//   if (err) {
//     console.log(err)
//   }
//   console.log('file deleted')
// })