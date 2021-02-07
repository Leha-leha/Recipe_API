const mySQL = require("mysql");

const { HOST, USER, PASS, DB } = process.env;
const db = mySQL.createConnection({
  // Setting DB
  host: HOST,
  user: USER,
  password: PASS,
  database: DB,
});

db.connect((err) => {
  if (err) throw err;
  console.log("Database Connected from mysql 01");
});

module.exports = db;
