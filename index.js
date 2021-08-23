const express = require('express')
const bodyParser = require('body-parser')
const app = express()
const port = 3000
app.use(express.static('../public'))

app.set(bodyParser.urlencoded({extended: false}))
app.set('view engine', 'pug')

app.get('/',function(req,res){
    res.sendFile('/views/homepage.html',{root : __dirname})
});

app.post('/submit', function(req,res){
    console.log(req.body);
    res.render('/views/homepage.html',{title:'Data Saved',
    message:'Data saved successfully'})
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})