const authModel = require("../models/authModel");
const form = require("../helpers/form");

const db = require("../configs/mySQL");

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
        await whiteListToken(data.token);
        form.success(res, data);
      })
      .catch((err) => {
        form.error(res, err);
      });
  },

  logout: (req, res) => {
    const bearerToken = req.header("x-access-token");
    if (!bearerToken) {
      res.json({
        msg: `token null!`,
      });
    } else {
      const token = bearerToken.split(" ")[1];
      console.log(token);
      authModel
        .deleteLogout(token)
        .then((result) => {
          form.success(res, result);
        })
        .catch((error) => {
          form.error(res, error);
        });
    }
  },

  userReset: (req, res) => {
    authModel
      .resetPassword(req.body)
      .then((data) => {
        form.success(res, data);
      })
      .catch((err) => {
        form.error(res, err);
      });
  },
  sendEmailUser: (req, res) => {
    authModel.sendEmailUser(req.body).then((data) => {
      let transporter = nodemailer.createTransport({
        service: "gmail",
        auth: {
          user: "mghalyramadhan@gmail.com",
          pass: "ghalymars",
        },
      });
      const mailOptions = {
        from: "mghalyramadhan@gmail.com",
        to: data.email,
        subject: "Reset Password",
        text: `Link to reset password : ${data.link}`,
      };

      transporter
        .sendMail(mailOptions, (error, info) => {
          if (error) {
            console.log(error);
          } else {
            console.log("Email sent: " + info.response);
          }
          form.success(res, data);
        })
        .catch((err) => {
          console.log(err);
          form.err(res, err);
        });
    });
  },
};
