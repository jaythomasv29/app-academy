const express = require('express')

const app = express()

app.use(express.urlencoded({extended: false}))
app.use(express.static(__dirname + '/public'))

app.get('/', (req, res) => {
  console.log(req.query) // querystring from url
  // console.log(req.headers)
  
  res.send("getting root")
})

app.get('/user/:id', (req, res) => {
  console.log(req.params)
  res.end()
})
app.listen(3000)