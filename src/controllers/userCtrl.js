const userByIdModel = require("../models/userModel");
const form = require("../helpers/form");

module.exports = {
  getUserById: (req, res) => {
    userByIdModel
      .getUserById(req)
      .then((data) => {
        if (data.length) {
          res.json({
            data,
          });
        } else {
          res.status(404).json({
            msg: "Data not Found",
          });
        }
      })
      .catch((err) => {
        res.json(err);
      });
  },
};
