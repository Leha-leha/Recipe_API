require("dotenv").config();
const express = require("express");
//const bodyParser = require("body-parser");
const logger = require("morgan");
const cors = require("cors");
// const mysql = require("mysql");
// const expressValidator = require("express-validator");
// const nodemailer = require("nodemailer");

const mainRouter = require("./src/routes/index");

const app = express();

// logger
app.use(logger("dev"));

// memperbolehkan access dari semua origin
app.use(cors());

//static
app.use(express.static("public"));

// menambahkan parser untuk x-www-form-urlencoded
app.use(express.urlencoded({ extended: false }));

// menambahkan parser untuk raw json
app.use(express.json());

// Routes
app.use("/", mainRouter);



// const port = 5000
app.listen(process.env.PORT, () => {
  console.log(`Server is Running at ${process.env.PORT}`);
});
