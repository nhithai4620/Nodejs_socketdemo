const express = require('express');
const bodyParser = require('body-parser');
const app = express();

app.use(function (req, res, next) {

    // Website you wish to allow to connect
    res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3000');

    // Request methods you wish to allow
    res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

    // Request headers you wish to allow
    res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

    // Set to true if you need the website to include cookies in the requests sent
    // to the API (e.g. in case you use sessions)
    res.setHeader('Access-Control-Allow-Credentials', true);

    // Pass to next layer of middleware
    next();
});

app.use(bodyParser.json());

app.use(bodyParser.urlencoded({ extended: true })); 

app.post("/api/submit", (req, res) => {
    var student = req.body;
    if (student){
        console.log(student);
        res.send("success");
    }
    else {
        res.send("false")
    }
    
})

app.listen(5000,function(){
    console.log('Node server runing @http://localhost:5000');
})