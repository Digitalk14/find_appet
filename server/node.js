const express = require("express");
const bodyParser = require("body-parser");
var cors = require("cors");
const app = express();
const expressip = require("express-ip");
var http = require("http");
const request = require("request");
const lostDogsList = require("./mockup/lostDogsList.json");

var server = http.createServer(function (req, res) {
  res.end("test");
});

server.on("listening", function () {
  console.log("ok, server is running");
});

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(cors());
app.use(expressip().getIpInfoMiddleware);
//
const PORT = process.env.PORT || 3001;
app.listen(PORT, "0.0.0.0");

app.get("/lost/dogs", async function (req, res) {
  res.send(lostDogsList);
});
