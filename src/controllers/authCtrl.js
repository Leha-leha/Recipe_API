const authModel = require("../models/authModel");
const form = require("../helpers/form");

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
};
