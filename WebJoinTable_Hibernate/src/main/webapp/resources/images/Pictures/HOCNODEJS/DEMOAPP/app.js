const express = require('express')
const app  = express();
const homerouter = require('./home.router');
app.get('/about',homerouter.about);

app.use(express.static('public'));
app.get('', function(req, res) {
    res.send('<h1>Hello NodeJS</h1>');
});
//cach 1 http://3000/about/loc/18
app.get('/about/:name/:age',function(req,res){
    let _name = req.params.name;
    let _age = req.params.age;
    res.send(`<h1>xin chao ${_name} tuoi cua toi la ${_age}<h1>`);
});
// cah 2 http://router_name?key=values&key=value1
app.get('/contact',function(req,res){
    let _name = req.query.name;
    let _age = req.query.age;
    res.send(`<h1>xin chao ${_name} tuoi cua toi la ${_age}<h1>`);
});
app.listen(3000,function(){
    console.log('server on http://localhost:3000')
})