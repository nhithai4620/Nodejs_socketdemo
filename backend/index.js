const express = require('express');
const app = express();
app.use(express.static("public"));
app.set("view engine", "ejs");
app.set("views", "./views");

var server = require("http").Server(app);
var io = require("socket.io")(server);

server.listen(5000,function(){
    console.log('Node server runing @http://localhost:5000');
})

var mysql = require("mysql");

var con = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "student",
  port: "3307"
});

con.connect(function(err){
  if(err){
    console.log('Error connecting to Db');
    return;
  }
  console.log('Connection established');
});


io.on("connection",function(socket){
    console.log("Có người đã kết nối :" + socket.id);

    socket.on("disconnect", function(){
        console.log("Người dùng : " + socket.id + " đã ngắt kết nối!!!!")
    })

    socket.on("Client-send-data",function(data){
        var sql = 'insert into infor(ID,Name,Birth,Email,PhoneNumber,Province,Wards)  value(?,?,?,?,?,?,?);';
        var studentInfor = [];
        data.forEach(element => {
            studentInfor.push(element.name + " " + element.value);
        });
        console.log(studentInfor);
        // var sql = 'insert into customer(ctm_name,ctm_sex,ctm_birth,ctm_point,ctm_account,ctm_password)  value(?,?,?,?,?,?);';
        // var user = req.body;
        // var values = [user.name, user.sex,user.birth,user.point,user.account,user.password];
        // if (user){
        //     con.query(sql,values, function(error, results) {
        //         if (error)	{
        //             res.send('false');
        //             throw error;
        //         }
        //         else {
        //             res.send('success');
        //         }
        //         res.end();
        //     });
        // } else {
        //     res.send('Please enter Username and Password!');
        //     res.end();
        // }  
    })
});

app.get("/", function(req,res){
    res.render("trangchu");
})



