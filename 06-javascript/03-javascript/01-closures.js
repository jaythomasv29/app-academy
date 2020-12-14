const first = () => {
  const greet = 'A greet from first saved because it is a parent scope function'
  const second = () => {
    alert(greet) // child scope has access to parent so it can alert from primary scope
  }
return second
}

const newFunc = first()
newFunc()
