const recipesModel = require("../models/recipesModel");
const form = require("../helpers/form");

module.exports = {
  getAllRecipes: (req, res) => {
    recipesModel
      .getAllRecipesModel(req)
      .then((data) => {
        form.success(res, data);
      })
      .catch((err) => {
        form.error(res, err);
      });
  },
};
