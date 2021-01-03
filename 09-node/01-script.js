import {largeNumber} from "./02-modules-js-way.js"
import {number} from "./03-es6-modules.js"
const a = largeNumber;
const b = 55;

setTimeout(() => {
  console.log(a+b+number)
},2000)

