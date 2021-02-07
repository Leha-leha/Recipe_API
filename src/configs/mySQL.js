const mySQL = require("mysql");

const {HOST, DB_USER, DB_PASS, DB} = process.env
const db = mySQL.createConnection({
  // Setting DB
  host: HOST,
  user: DB_USER,
  password: DB_PASS,
  database: DB,
});

db.connect((err) => {
  if (err) throw err;
  console.log("Database Connected from mysql 01");
});

module.exports = db;
