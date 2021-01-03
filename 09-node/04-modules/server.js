const express = require('express')
const app = express()


app.use(express.json()); 
app.use(express.urlencoded({extended: false}))


app.get('/', ((req, res) => {
  res.send('Hello World')
}))

app.post('/profile', function (req, res) { 
  console.log(req.body.name) 
  res.end(); 
}) 
app.listen(3000)