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

exports.postLogin = (body) => {
  // query ke DB => SELECT password WHERE username == username body
  // compare body password dengan password DB
  // jwt => sign, verify
  // sign => mendapatkan token dari payload
  // token dikirim ke client
  return new Promise((resolve, reject) => {
    if (body.email == 0 || body.user_password == 0) {
      return reject({
        msg: "input user",
      });
    }
    const { email_user, password_user } = body;
    const qs = "SELECT users.password_user FROM users WHERE email_user=?";
    db.query(qs, email_user, (err, data) => {
      if (err) {
        reject({
          msg: "Error SQL",
          status: 500,
          err,
        });
      }
      console.log(data);
      if (data == undefined) {
        return reject({
          msg: "error",
        });
      }
      if (!data[0]) {
        reject({
          msg: "User Not Found",
          status: 404,
        });
      } else {
        bcrypt.compare(password_user, data[0].password_user, (err, result) => {
          if (err) {
            reject({
              msg: "Hash Error",
              status: 500,
              err,
            });
          }
          // result => true : false
          if (!result) {
            reject({
              msg: "Wrong Password",
              status: 401,
            });
          } else {
            const payload = {
              email_user,
            };
            const secret = process.env.SECRET_KEY;
            const token = jwt.sign(payload, secret);
            resolve(token);
          }
        });
      }
    });
  });
};

exports.deleteLogout = (whitelisttoken) => {
  return new Promise((resolve, reject) => {
    const qs = "DELETE FROM token_whitelist WHERE token=?";
    db.query(qs, whitelisttoken, (err, data) => {
      if (!err) {
        resolve({
          msg: `Logout berhasil`,
        });
      } else {
        reject({
          msg: `Logout tidak berhasil`,
        });
      }
    });
  });
};