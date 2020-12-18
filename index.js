require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const logger = require("morgan");
const cors = require("cors");

const app = express();

// const port = 5000
app.listen(process.env.PORT, () => {
    console.log(`Server is Running at ${process.env.PORT}`);
});
app.use(express.static("public"));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended:false}));
app.use(logger("dev"));
app.use(cors());