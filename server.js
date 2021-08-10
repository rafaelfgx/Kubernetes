"use strict";
const express = require("express");
const app = express();
app.get("/", (req, res) => res.send("OK"));
app.listen(80);
console.log("Listening");