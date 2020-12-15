const nums = [1,2,3,4,5,6]

function findNum(arr) {
let t0 = performance.now()
for (let i = 0; i < nums.length ; i++)
  if (nums[i] == 4) {
    console.log(`found the number ${nums[i]}`)
  }
  let t1 = performance.now()
  console.log(`Call to find number ${t1-t0}`)
}


