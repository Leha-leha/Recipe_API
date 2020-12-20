const db = require("../configs/mySQL");
const from = require("../helpers/form");

exports.getAllRecipesModel = (req) => {
  return new Promise((resolve, reject) => {
    const qs = "SELECT r.title_rcp, r.img_rcp FROM recipes as r";
    db.query(qs, (err, receipes) => {
      if (receipes.length == 0) {
        reject({
          msg: "data tidak tersedia",
        });
      }
      if (!err) {
        resolve(receipes);
      } else {
        reject(err);
      }
    });
  });
};
