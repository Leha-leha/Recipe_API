const bcrypt = require("bcrypt");
const jwt = require("jsonwebtoken");

const db = require("../configs/mySQL");

exports.postNewUser = (body) => {
  //gensalt
  //hash
  //store DB
  return new Promise((resolve, reject) => {
    const saltRounds = 10;
    bcrypt.genSalt(saltRounds, (err, salt) => {
      if (err) {
        reject(err);
      }
      bcrypt.hash(body.password_user, salt, (err, hashedPassword) => {
        if (err) {
          reject(err);
        }
        const newBody = {
          ...body,
          password_user: hashedPassword,
        };
        const qs = "INSERT INTO users SET ?";
        db.query(qs, newBody, (err, data) => {
          if (err) {
            if (err.code == "ER_DUP_ENTRY") {
              return reject({
                msg: "email sudah terdaftar",
                status: 409,
              });
            }
          }
          if (!err) {
            resolve(data);
          } else {
            reject(err);
          }
        });
      });
    });
  });
};
