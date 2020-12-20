const authModel = require("../models/authModel");
const form = require("../helpers/form");

const db = require("../configs/mySQL");

// const whiteListToken = (whiteListToken) => {
//   return new Promise((resolve, reject) => {
//     const qs = "INSERT INTO token_whitelist SET ?";
//     db.query(qs, whiteListToken, (err, data) => {
//       if (!err) {
//         resolve({
//           msg: `Login berhasil`,
//         });
//       } else {
//         reject({
//           msg: `Login tidak berhasil`,
//         });
//       }
//     });
//   });
// };

async function whiteListToken(token) {
  await db.query("INSERT INTO token_whitelist SET token=?", token);
}

module.exports = {
  signup: (req, res) => {
    const { body } = req;
    console.log(body);
    authModel
      .postNewUser(body)
      .then(() => {
        form.success(res, {
          msg: "Register Berhasil",
          userData: {
            username: body.name_user,
          },
        });
      })
      .catch((err) => {
        form.error(res, err);
      });
  },

  login: (req, res) => {
    const { body } = req;

    authModel
      .postLogin(body)
      .then(async (data) => {
        await whiteListToken(data);
        form.success(res, data);
      })
      .catch((err) => {
        form.error(res, err);
      });
  },
};
