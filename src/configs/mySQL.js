const mySQL = require("mysql");

const { MYSQL_HOST, MYSQL_USER, MYSQL_PASS, MYSQL_DB } = process.env;
const db = mySQL.createConnection({
  // Setting DB
  host: MYSQL_HOST,
  user: MYSQL_USER,
  password: MYSQL_PASS,
  database: MYSQL_DB,
});

db.connect((err) => {
  if (err) throw err;
  console.log("Database Connected from mysql 01");
});

module.exports = db;
