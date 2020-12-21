const recipeByIdModel = require("../models/recipeByIdModel");
const form = require("../helpers/form");

module.exports = {
  getRecipeById: (req, res) => {
    console.log(req.headers);
    recipeByIdModel
      .getRecipeById(req)
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

  deleteRecipeByIdCtrl: (req, res) => {
    recipeByIdModel
      .deleteRecipeById(req)
      .then(() => {
        form.success(res, {
          status: "success",
          msg: "Data berhasil dihapus",
        });
      })
      .catch((err) => {
        form.error(res, err);
      });
  },
};
