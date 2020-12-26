const db = require("../configs/mySQL");

exports.postNewSave = (body) => {
  return new Promise((resolve, reject) => {
    const qs = "INSERT INTO saves SET ?";
    db.query(qs, body, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(errr);
      }
    });
  });
};

exports.getRecipeSave = (req) => {
  const { id } = req.params;
  return new Promise((resolve, reject) => {
    const qs =
      "SELECT r.img_rcp, r.title_rcp FROM recipes as r JOIN saves as s ON s.recipe_id=r.id_rcp WHERE s.user_id=?";
    db.query(qs, id, (err, data) => {
      if (!err) {
        resolve(data);
      } else {
        reject(errr);
      }
    });
  });
};
