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

io.on("connection",function(socket){
    console.log("Có người đã kết nối " + socket.id);

    socket.on("disconnect", function(){
        console.log(socket.id + " đã ngắt kết nối!!!!")
    })
});

app.get("/", function(req,res){
    res.render("trangchu");
})

