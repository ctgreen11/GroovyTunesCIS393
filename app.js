const mysql = require('mysql');
const express = require('express');

var app = express();


app.set("view engine","ejs");

var bodyparser = require("body-parser");
app.use(bodyparser.urlencoded({extended:true}));
app.use(express.static(__dirname + '/public'));

const con = mysql.createConnection({
    host: 'localhost',
    user:'root',
    database:'MusicCatalog'
});

con.connect((err) => {
    if(err) throw err;
    console.log("Database connected");
});

app.get("/search", function(req, res) {
    res.render("Search");
    });

app.get("/update", function(req,res) {
    var q = "select * from Music";
    con.query(q, function(error, results) {
    if (error) throw error;
    res.render("UpdateSong", { data: results });
    })
});

app.get("/musicdelete", function(req,res) {
    var q = "select * from Music";
    con.query(q, function(error, results) {
    if (error) throw error;
    res.render("DeleteMusic", { data: results });
    })
});

app.get("/displayAllMusic", function(req, res) {
    var q = "select * from Music";
    con.query(q, function(error, results) {
    if (error) throw error;
    res.render("DisplayAllMusic", { data: results });
    });
});

app.post("/search", function(req, res) {
    var musicID = req.body.std_music_title;
    var q = "select music_id, music_title, music_artist from Music where music_title = ?";
    con.query(q, [musicID], function(error, results) {
    if (error) throw error;
    else
    res.render("Search_results", { data: results[0], count: results.length });
    });
 });


app.post("/register_user", function(req, res) {
    var User_info = {user_username: req.body.std_username, user_password: req.body.std_password, user_email: req.body.std_email};
    var q = "insert into User set ?";
    con.query(q, User_info, function(error, results) {
    if (error) throw error;
    res.redirect("displayAllUsers"); //redirect to root page
    });
});

app.post("/Musicdelete", function(req, res) {
    var musicID = req.body.std_music_id;
    var q = "DELETE FROM Music WHERE music_id = ?";
    con.query(q, musicID, function(error, results) {
        if (error) throw error;
        else {
        if (results.affectedRows === 0) 
        res.send("No Song found with that MusicID: " + musicID);
        else
            res.redirect('back'); 
        }
    });
});

app.get("/displayAllUsers", function(req, res) {
    var q = "select * from User";
    con.query(q, function(error, results) {
    if (error) throw error;
    res.render("DisplayAllUsers.ejs", { data: results });
    });
});

app.get("/dbuser", function(req, res){
    var q = 'SELECT COUNT(*) as count FROM User';
    con.query(q, function (error, results) {
    if (error) throw error;
    var count = results[0].count;
    res.render("User_Register", {data : count});
    });//query
});//get

app.post("/register_music", function(req, res) {
    var Music_info = {user_id: req.body.std_userid, music_title: req.body.std_title, music_artist: req.body.std_artist, music_album: req.body.std_album, music_genre: req.body.std_genre, music_ReleaseYear: req.body.std_releaseyear};
    var q = "insert into Music set ?";
    con.query(q, Music_info, function(error, results) {
    if (error) throw error;
    res.redirect("/displayMusic"), { data: results }; //redirect to root page
    });
});

app.post("/update", function(req, res) {
    var Music_info = {music_title: req.body.std_title, music_artist: req.body.std_artist, music_album: req.body.std_album, music_genre: req.body.std_genre, music_ReleaseYear: req.body.std_ReleaseYear, music_id: req.body.std_music_id};
    var q = "update Music set music_title=?, music_artist=?, music_album=?, music_genre=?, music_ReleaseYear=? where music_id=?";
    con.query(q, [Music_info.music_title, Music_info.music_artist, Music_info.music_album, Music_info.music_genre, Music_info.music_ReleaseYear, Music_info.music_id], function(error, results) {
        if (error) throw error;
        else {
        if (results.affectedRows === 0) 
        res.send("No Song found with that Title: " + Music_info.std_title);
        else
            res.redirect('back'); 
        }
    });
});

app.get("/displayUsers", function(req, res) {
    var q = "select * from User";
    con.query(q, function(error, results) {
    if (error) throw error;
    res.render("Music_insert", { data: results });
    });
});

app.get("/displayMusic", function(req, res) {
    var q = "select * from Music";
    con.query(q, function(error, results) {
    if (error) throw error;
    res.render("Music_Results", { data: results });
    });
});

app.listen(8080, function () {
    console.log('App listening on port 8080!');
    });