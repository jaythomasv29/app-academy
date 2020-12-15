const basket = [ 'apples', 'oranges', 'grapes' ]
const detailedBasket = {
  oranges: 5,
  apples: 10,
  grapes: 20
}
// Array iterating
// for..of
for ( item of basket ) {
  console.log( item )
}
//.forEach()
basket.forEach( ele => console.log( ele ) )





// Objects loops - 

// for..in

for ( item in detailedBasket ) {
  console.log( 'detail', item )
}


